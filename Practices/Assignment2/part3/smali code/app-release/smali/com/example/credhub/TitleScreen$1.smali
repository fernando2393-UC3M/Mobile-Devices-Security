.class Lcom/example/credhub/TitleScreen$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/credhub/TitleScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/credhub/TitleScreen;


# direct methods
.method constructor <init>(Lcom/example/credhub/TitleScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/example/credhub/TitleScreen$1;->this$0:Lcom/example/credhub/TitleScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Lcom/example/credhub/TitleScreen$1;->sleep(J)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/credhub/TitleScreen$1;->this$0:Lcom/example/credhub/TitleScreen;

    const-class v2, Lcom/example/credhub/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/example/credhub/TitleScreen$1;->this$0:Lcom/example/credhub/TitleScreen;

    invoke-virtual {v1, v0}, Lcom/example/credhub/TitleScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR - InterruptedException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
