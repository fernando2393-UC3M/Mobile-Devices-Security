.class Lcom/example/credhub/ShowPassword$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/credhub/ShowPassword;->setButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/credhub/ShowPassword;


# direct methods
.method constructor <init>(Lcom/example/credhub/ShowPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/example/credhub/ShowPassword$2;->this$0:Lcom/example/credhub/ShowPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, La/a;

    iget-object v0, p0, Lcom/example/credhub/ShowPassword$2;->this$0:Lcom/example/credhub/ShowPassword;

    invoke-virtual {v0}, Lcom/example/credhub/ShowPassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "User_DB"

    invoke-direct {p1, v0, v1}, La/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, La/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "User"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Description=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/example/credhub/ShowPassword$2;->this$0:Lcom/example/credhub/ShowPassword;

    iget-object v2, v2, Lcom/example/credhub/ShowPassword;->finalDes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/credhub/ShowPassword$2;->this$0:Lcom/example/credhub/ShowPassword;

    const-class v2, Lcom/example/credhub/MainScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/example/credhub/ShowPassword$2;->this$0:Lcom/example/credhub/ShowPassword;

    invoke-virtual {v1, v0}, Lcom/example/credhub/ShowPassword;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method
