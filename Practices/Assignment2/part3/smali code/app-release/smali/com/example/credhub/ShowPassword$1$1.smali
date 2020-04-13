.class Lcom/example/credhub/ShowPassword$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/credhub/ShowPassword$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/credhub/ShowPassword$1;


# direct methods
.method constructor <init>(Lcom/example/credhub/ShowPassword$1;)V
    .locals 0

    iput-object p1, p0, Lcom/example/credhub/ShowPassword$1$1;->this$1:Lcom/example/credhub/ShowPassword$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/example/credhub/ShowPassword$1$1;->this$1:Lcom/example/credhub/ShowPassword$1;

    iget-object v0, v0, Lcom/example/credhub/ShowPassword$1;->this$0:Lcom/example/credhub/ShowPassword;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Lcom/example/credhub/ShowPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "******"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
