.class public Lcom/example/credhub/ImportListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/credhub/ImportListener;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/example/credhub/TalkToServer;

    iget-object p3, p0, Lcom/example/credhub/ImportListener;->activity:Landroid/app/Activity;

    invoke-direct {p2, p3}, Lcom/example/credhub/TalkToServer;-><init>(Landroid/app/Activity;)V

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const-string p4, "2"

    const/4 p5, 0x0

    aput-object p4, p3, p5

    const/4 p4, 0x1

    aput-object p1, p3, p4

    invoke-virtual {p2, p3}, Lcom/example/credhub/TalkToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
