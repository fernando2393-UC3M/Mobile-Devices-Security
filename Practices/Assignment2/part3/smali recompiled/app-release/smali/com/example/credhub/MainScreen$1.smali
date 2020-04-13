.class Lcom/example/credhub/MainScreen$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/credhub/MainScreen;->setButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/credhub/MainScreen;


# direct methods
.method constructor <init>(Lcom/example/credhub/MainScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/example/credhub/MainScreen$1;->this$0:Lcom/example/credhub/MainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/example/credhub/MainScreen$1;->this$0:Lcom/example/credhub/MainScreen;

    const-class v1, Lcom/example/credhub/NewRecord;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/example/credhub/MainScreen$1;->this$0:Lcom/example/credhub/MainScreen;

    invoke-virtual {v0, p1}, Lcom/example/credhub/MainScreen;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
