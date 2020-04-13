.class public final Lorg/b/b/a;
.super Ljava/io/IOException;


# instance fields
.field private a:I

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lorg/b/b/a;->a:I

    iput-object p3, p0, Lorg/b/b/a;->b:Ljava/util/List;

    return-void
.end method
