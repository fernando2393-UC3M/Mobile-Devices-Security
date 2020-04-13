.class Lcom/example/credhub/ShowPassword$1;
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

    iput-object p1, p0, Lcom/example/credhub/ShowPassword$1;->this$0:Lcom/example/credhub/ShowPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/example/credhub/ShowPassword$1;->this$0:Lcom/example/credhub/ShowPassword;

    const v0, 0x7f08000a

    invoke-virtual {p1, v0}, Lcom/example/credhub/ShowPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/example/credhub/ShowPassword$1;->this$0:Lcom/example/credhub/ShowPassword;

    iget-object v0, v0, Lcom/example/credhub/ShowPassword;->finalPass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "PASSWORD"

    iget-object v0, p0, Lcom/example/credhub/ShowPassword$1;->this$0:Lcom/example/credhub/ShowPassword;

    iget-object v0, v0, Lcom/example/credhub/ShowPassword;->finalPass:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/example/credhub/ShowPassword$1$1;

    invoke-direct {v0, p0}, Lcom/example/credhub/ShowPassword$1$1;-><init>(Lcom/example/credhub/ShowPassword$1;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
