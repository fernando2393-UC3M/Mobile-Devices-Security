.class public Lcom/example/credhub/TalkToServer;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static androidHttpTransport:Lorg/b/b/b;

.field private static headerList_basicAuth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callerActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private operation:Ljava/lang/String;

.field private response:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private connectServer()V
    .locals 6

    new-instance v0, Lorg/b/b/b;

    const-string v1, "http://10.0.2.2/SDM/WebRepo?wsdl"

    invoke-direct {v0, v1}, Lorg/b/b/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/example/credhub/TalkToServer;->androidHttpTransport:Lorg/b/b/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/example/credhub/TalkToServer;->headerList_basicAuth:Ljava/util/List;

    const-string v0, "sdm:repo4droid"

    sget-object v1, Lcom/example/credhub/TalkToServer;->headerList_basicAuth:Ljava/util/List;

    new-instance v2, Lorg/b/a;

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Basic "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private exportRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/b/a/j;

    const-string v1, "http://sdm_webrepo/"

    const-string v2, "ExportRecord"

    invoke-direct {v0, v1, v2}, Lorg/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/b/a/i;

    invoke-direct {v1}, Lorg/b/a/i;-><init>()V

    const-string v2, "arg0"

    iput-object v2, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/b/a/i;->a(Ljava/lang/Object;)V

    sget-object p1, Lorg/b/a/i;->b:Ljava/lang/Class;

    iput-object p1, v1, Lorg/b/a/i;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/b/a/j;->a(Lorg/b/a/i;)Lorg/b/a/j;

    new-instance p1, Lorg/b/a/i;

    invoke-direct {p1}, Lorg/b/a/i;-><init>()V

    const-string v1, "arg1"

    iput-object v1, p1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/b/a/i;->a(Ljava/lang/Object;)V

    sget-object p2, Lorg/b/a/i;->b:Ljava/lang/Class;

    iput-object p2, p1, Lorg/b/a/i;->l:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/b/a/j;->a(Lorg/b/a/i;)Lorg/b/a/j;

    new-instance p1, Lorg/b/a/i;

    invoke-direct {p1}, Lorg/b/a/i;-><init>()V

    const-string p2, "arg2"

    iput-object p2, p1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/b/a/i;->a(Ljava/lang/Object;)V

    sget-object p2, Lorg/b/a/i;->b:Ljava/lang/Class;

    iput-object p2, p1, Lorg/b/a/i;->l:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/b/a/j;->a(Lorg/b/a/i;)Lorg/b/a/j;

    new-instance p1, Lorg/b/a/l;

    invoke-direct {p1}, Lorg/b/a/l;-><init>()V

    iput-object v0, p1, Lorg/b/b;->b:Ljava/lang/Object;

    const-string p2, "\"http://sdm_webrepo/ExportRecord\""

    sget-object p3, Lcom/example/credhub/TalkToServer;->androidHttpTransport:Lorg/b/b/b;

    sget-object v0, Lcom/example/credhub/TalkToServer;->headerList_basicAuth:Ljava/util/List;

    invoke-virtual {p3, p2, p1, v0}, Lorg/b/b/b;->a(Ljava/lang/String;Lorg/b/b;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/d/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "exportRecord"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ERROR - XmlPullParserException - "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/d/a/b;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p1

    const-string p2, "exportRecord"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ERROR - IOException - "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private importRecord(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/b/b/b;

    const-string v1, "http://10.0.2.2/SDM/WebRepo?wsdl"

    invoke-direct {v0, v1}, Lorg/b/b/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/example/credhub/TalkToServer;->androidHttpTransport:Lorg/b/b/b;

    new-instance v0, Lorg/b/a/j;

    const-string v1, "http://sdm_webrepo/"

    const-string v2, "ImportRecord"

    invoke-direct {v0, v1, v2}, Lorg/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/b/a/i;

    invoke-direct {v1}, Lorg/b/a/i;-><init>()V

    const-string v2, "arg0"

    iput-object v2, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/b/a/i;->a(Ljava/lang/Object;)V

    sget-object p1, Lorg/b/a/i;->b:Ljava/lang/Class;

    iput-object p1, v1, Lorg/b/a/i;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/b/a/j;->a(Lorg/b/a/i;)Lorg/b/a/j;

    new-instance p1, Lorg/b/a/l;

    invoke-direct {p1}, Lorg/b/a/l;-><init>()V

    iput-object v0, p1, Lorg/b/b;->b:Ljava/lang/Object;

    sget-object v0, Lcom/example/credhub/TalkToServer;->androidHttpTransport:Lorg/b/b/b;

    const-string v1, "\"http://sdm_webrepo/ImportRecord\""

    sget-object v2, Lcom/example/credhub/TalkToServer;->headerList_basicAuth:Ljava/util/List;

    invoke-virtual {v0, v1, p1, v2}, Lorg/b/b/b;->a(Ljava/lang/String;Lorg/b/b;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p1}, Lorg/b/a/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/b/a/k;

    invoke-virtual {v2}, Lorg/b/a/k;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/b/a/k;

    invoke-virtual {v2}, Lorg/b/a/k;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/a/k;

    invoke-virtual {p1}, Lorg/b/a/k;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0

    :cond_0
    const-string p1, "importRecord"

    const-string v0, "Imported record size does not match"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "importRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private postExport()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/credhub/MainScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private postImport()V
    .locals 9

    iget-object v0, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, La/a;

    iget-object v1, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "User_DB"

    invoke-direct {v0, v1, v2}, La/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, La/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM User WHERE Description = \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, La/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "Description"

    iget-object v8, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Username"

    iget-object v8, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    aget-object v6, v8, v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Password"

    iget-object v7, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    aget-object v5, v7, v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "User"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Description=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Record "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Updated"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "Description"

    iget-object v7, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Username"

    iget-object v7, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    aget-object v6, v7, v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Password"

    iget-object v6, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User"

    const-string v5, "Description"

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Register ID: "

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/credhub/MainScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private postRead()V
    .locals 5

    iget-object v0, p0, Lcom/example/credhub/TalkToServer;->callerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/example/credhub/ImportListener;

    invoke-direct {v2, v0}, Lcom/example/credhub/ImportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f0a003e

    invoke-direct {v3, v0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private readRecords()[Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/b/a/j;

    const-string v1, "http://sdm_webrepo/"

    const-string v2, "ListCredentials"

    invoke-direct {v0, v1, v2}, Lorg/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/b/a/l;

    invoke-direct {v1}, Lorg/b/a/l;-><init>()V

    iput-object v0, v1, Lorg/b/b;->b:Ljava/lang/Object;

    sget-object v0, Lcom/example/credhub/TalkToServer;->androidHttpTransport:Lorg/b/b/b;

    const-string v2, "\"http://sdm_webrepo/ListCredentials\""

    sget-object v3, Lcom/example/credhub/TalkToServer;->headerList_basicAuth:Ljava/util/List;

    invoke-virtual {v0, v2, v1, v3}, Lorg/b/b/b;->a(Ljava/lang/String;Lorg/b/b;Ljava/util/List;)Ljava/util/List;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, Lorg/b/a/l;->a()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Vector;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/b/a/l;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/b/a/l;->a()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/b/a/k;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/b/a/l;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/a/k;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/b/a/k;

    invoke-virtual {v3}, Lorg/b/a/k;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/d/a/b; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "readRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR - XmlPullParserException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/d/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "readRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR - IOException - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/credhub/TalkToServer;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-direct {p0}, Lcom/example/credhub/TalkToServer;->connectServer()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/example/credhub/TalkToServer;->operation:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/credhub/TalkToServer;->operation:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :pswitch_2
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_1

    const-string p1, "DoInBackground"

    const-string v1, "Wrong operation"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_3
    aget-object p1, p1, v6

    invoke-direct {p0, p1}, Lcom/example/credhub/TalkToServer;->importRecord(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Lcom/example/credhub/TalkToServer;->readRecords()[Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/example/credhub/TalkToServer;->response:[Ljava/lang/String;

    goto :goto_3

    :pswitch_5
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    aget-object v0, p1, v6

    aget-object v2, p1, v5

    aget-object p1, p1, v1

    invoke-direct {p0, v0, v2, p1}, Lcom/example/credhub/TalkToServer;->exportRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    const-string p1, "Correct"

    return-object p1

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/credhub/TalkToServer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/example/credhub/TalkToServer;->operation:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    const-string p1, "onPostExecute"

    const-string v0, "Wrong operation"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/example/credhub/TalkToServer;->postImport()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/example/credhub/TalkToServer;->postRead()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/example/credhub/TalkToServer;->postExport()V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/credhub/TalkToServer;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
