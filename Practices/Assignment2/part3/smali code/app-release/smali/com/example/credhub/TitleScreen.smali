.class public Lcom/example/credhub/TitleScreen;
.super Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0020

    invoke-virtual {p0, p1}, Lcom/example/credhub/TitleScreen;->setContentView(I)V

    new-instance p1, Lcom/example/credhub/TitleScreen$1;

    invoke-direct {p1, p0}, Lcom/example/credhub/TitleScreen$1;-><init>(Lcom/example/credhub/TitleScreen;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
