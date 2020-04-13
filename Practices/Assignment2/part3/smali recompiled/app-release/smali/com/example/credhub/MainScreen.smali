.class public Lcom/example/credhub/MainScreen;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field conn:La/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private DB_Query()V
    .locals 4

    iget-object v0, p0, Lcom/example/credhub/MainScreen;->conn:La/a;

    invoke-virtual {v0}, La/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM User"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Description"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const v1, 0x7f08006c

    invoke-virtual {p0, v1}, Lcom/example/credhub/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v3, Lcom/example/credhub/MainScreen$3;

    invoke-direct {v3, p0, v0}, Lcom/example/credhub/MainScreen$3;-><init>(Lcom/example/credhub/MainScreen;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0a003e

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setButtons()V
    .locals 3

    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/example/credhub/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/example/credhub/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/example/credhub/MainScreen$1;

    invoke-direct {v2, p0}, Lcom/example/credhub/MainScreen$1;-><init>(Lcom/example/credhub/MainScreen;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/example/credhub/MainScreen$2;

    invoke-direct {v1, p0}, Lcom/example/credhub/MainScreen$2;-><init>(Lcom/example/credhub/MainScreen;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001d

    invoke-virtual {p0, p1}, Lcom/example/credhub/MainScreen;->setContentView(I)V

    invoke-direct {p0}, Lcom/example/credhub/MainScreen;->setButtons()V

    new-instance p1, La/a;

    const-string v0, "User_DB"

    invoke-direct {p1, p0, v0}, La/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/example/credhub/MainScreen;->conn:La/a;

    invoke-direct {p0}, Lcom/example/credhub/MainScreen;->DB_Query()V

    return-void
.end method
