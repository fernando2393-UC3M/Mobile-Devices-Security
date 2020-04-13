.class public abstract Lorg/b/b/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/net/Proxy;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lorg/b/b/e;->c:I

    iput v0, p0, Lorg/b/b/e;->d:I

    const-string v0, ""

    iput-object v0, p0, Lorg/b/b/e;->h:Ljava/lang/String;

    const/high16 v0, 0x40000

    iput v0, p0, Lorg/b/b/e;->i:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/b/b/e;->j:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/b/e;->a:Ljava/net/Proxy;

    iput-object p1, p0, Lorg/b/b/e;->b:Ljava/lang/String;

    return-void
.end method
