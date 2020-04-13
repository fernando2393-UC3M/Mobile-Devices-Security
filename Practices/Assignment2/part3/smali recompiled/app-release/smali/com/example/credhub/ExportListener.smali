.class public Lcom/example/credhub/ExportListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private record:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/credhub/ExportListener;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/example/credhub/ExportListener;->record:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Lcom/example/credhub/TalkToServer;

    iget-object v0, p0, Lcom/example/credhub/ExportListener;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/example/credhub/TalkToServer;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/example/credhub/ExportListener;->record:[Ljava/lang/String;

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    aget-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    aget-object v1, v1, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/example/credhub/TalkToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
