.class public final Lorg/c/b/a;
.super Lorg/c/b/b;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/Vector;

.field protected d:Lorg/c/b/b;

.field protected e:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/c/b/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object v0, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ltz v0, :cond_4

    iget-object v4, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v4, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_2

    iget-object p1, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    return-void

    :cond_2
    aput-object p3, v4, v2

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v3

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;
    .locals 1

    iget-object v0, p0, Lorg/c/b/a;->d:Lorg/c/b/b;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lorg/c/b/b;)V
    .locals 0

    iput-object p1, p0, Lorg/c/b/a;->d:Lorg/c/b/b;

    return-void
.end method

.method public final a(Lorg/d/a/a;)V
    .locals 7

    invoke-interface {p1}, Lorg/d/a/a;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/d/a/a;->a(I)I

    move-result v0

    :goto_0
    invoke-interface {p1}, Lorg/d/a/a;->a()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/d/a/a;->a(I)I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Lorg/d/a/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/d/a/a;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/c/b/a;->e:Ljava/util/Vector;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lorg/c/b/a;->e:Ljava/util/Vector;

    :cond_0
    iget-object v5, p0, Lorg/c/b/a;->e:Ljava/util/Vector;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v3

    aput-object v4, v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/d/a/a;->getAttributeCount()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {p1, v3}, Lorg/d/a/a;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3}, Lorg/d/a/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3}, Lorg/d/a/a;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/d/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/d/a/a;->k()I

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lorg/d/a/a;->k()I

    invoke-super {p0, p1}, Lorg/c/b/b;->a(Lorg/d/a/a;)V

    invoke-virtual {p0}, Lorg/c/b/a;->c()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x7

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/c/b/a;->a(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/c/b/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/b/a;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/d/a/a;->k()I

    return-void
.end method

.method public final a(Lorg/d/a/c;)V
    .locals 8

    iget-object v0, p0, Lorg/c/b/a;->e:Ljava/util/Vector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/c/b/a;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/c/b/a;->e:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/c/b/a;->e:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {p1, v3, v4}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/c/b/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lorg/c/b/a;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-object v0, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/c/b/a;->c:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-interface {p1, v4, v5, v6}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lorg/c/b/a;->b(Lorg/d/a/c;)V

    iget-object v0, p0, Lorg/c/b/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/c/b/a;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/b/a;->a:Ljava/lang/String;

    return-object v0
.end method
