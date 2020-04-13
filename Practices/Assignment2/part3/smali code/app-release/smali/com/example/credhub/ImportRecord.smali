.class public Lcom/example/credhub/ImportRecord;
.super Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001b

    invoke-virtual {p0, p1}, Lcom/example/credhub/ImportRecord;->setContentView(I)V

    new-instance p1, Lcom/example/credhub/TalkToServer;

    invoke-direct {p1, p0}, Lcom/example/credhub/TalkToServer;-><init>(Landroid/app/Activity;)V

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/credhub/TalkToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
