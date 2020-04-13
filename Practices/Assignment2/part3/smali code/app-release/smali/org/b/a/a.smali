.class public Lorg/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/b/a/e;


# instance fields
.field protected a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/b/a/a;->a:Ljava/util/Vector;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/a/b;

    iget-object v1, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final a(ILorg/b/a/b;)V
    .locals 1

    iget-object v0, p0, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/b/a/b;

    iget-object v0, p1, Lorg/b/a/b;->h:Ljava/lang/String;

    iput-object v0, p2, Lorg/b/a/b;->h:Ljava/lang/String;

    iget-object v0, p1, Lorg/b/a/b;->i:Ljava/lang/String;

    iput-object v0, p2, Lorg/b/a/b;->i:Ljava/lang/String;

    iget v0, p1, Lorg/b/a/b;->j:I

    iput v0, p2, Lorg/b/a/b;->j:I

    iget-object v0, p1, Lorg/b/a/b;->l:Ljava/lang/Object;

    iput-object v0, p2, Lorg/b/a/b;->l:Ljava/lang/Object;

    iget-object v0, p1, Lorg/b/a/b;->n:Lorg/b/a/i;

    iput-object v0, p2, Lorg/b/a/b;->n:Lorg/b/a/i;

    invoke-virtual {p1}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lorg/b/a/b;->k:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/b/a/b;

    invoke-direct {v0}, Lorg/b/a/b;-><init>()V

    iput-object p1, v0, Lorg/b/a/b;->h:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, v0, Lorg/b/a/b;->i:Ljava/lang/String;

    if-nez p2, :cond_0

    sget-object p1, Lorg/b/a/i;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lorg/b/a/b;->l:Ljava/lang/Object;

    iput-object p2, v0, Lorg/b/a/b;->k:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/b/a/a;->a(Lorg/b/a/b;)V

    return-void
.end method

.method public final a(Lorg/b/a/b;)V
    .locals 1

    iget-object v0, p0, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected final a(Lorg/b/a/a;)Z
    .locals 7

    iget-object v0, p0, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p1, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_5

    iget-object v4, p0, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/b/a/b;

    invoke-virtual {v4}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v4, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-direct {p1, v6}, Lorg/b/a/a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, v4, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-direct {p1, v3}, Lorg/b/a/a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p1, Lorg/b/a/a;->a:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/b/a/b;

    invoke-virtual {v3}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method
