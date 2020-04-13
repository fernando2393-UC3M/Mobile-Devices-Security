.class public Lorg/c/b/b;
.super Ljava/lang/Object;


# instance fields
.field protected f:Ljava/util/Vector;

.field protected g:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p0}, Lorg/c/b/b;->c()I

    move-result v0

    :goto_0
    if-ge p3, v0, :cond_2

    invoke-virtual {p0, p3}, Lorg/c/b/b;->a(I)Lorg/c/b/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/c/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lorg/c/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private a(IILjava/lang/Object;)V
    .locals 1

    if-eqz p3, :cond_4

    iget-object v0, p0, Lorg/c/b/b;->f:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/c/b/b;->f:Ljava/util/Vector;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/c/b/b;->g:Ljava/lang/StringBuffer;

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    instance-of v0, p3, Lorg/c/b/a;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lorg/c/b/a;

    invoke-virtual {v0, p0}, Lorg/c/b/a;->a(Lorg/c/b/b;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Element obj expected)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lorg/c/b/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, p3, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object p3, p0, Lorg/c/b/b;->g:Ljava/lang/StringBuffer;

    int-to-char p2, p2

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "String expected"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/c/b/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private c(I)I
    .locals 1

    iget-object v0, p0, Lorg/c/b/b;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(I)Lorg/c/b/a;
    .locals 1

    invoke-direct {p0, p1}, Lorg/c/b/b;->b(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/c/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/c/b/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;
    .locals 1

    new-instance v0, Lorg/c/b/a;

    invoke-direct {v0}, Lorg/c/b/a;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, v0, Lorg/c/b/a;->a:Ljava/lang/String;

    iput-object p2, v0, Lorg/c/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lorg/c/b/b;->c()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/c/b/b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/d/a/a;)V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-interface {p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    if-eqz v2, :cond_2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lorg/c/b/b;->a(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/c/b/a;->a(Lorg/d/a/a;)V

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/c/b/b;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/c/b/b;->a(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/d/a/a;->k()I

    :goto_2
    if-eqz v0, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lorg/d/a/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/c/b/b;->b(Lorg/d/a/c;)V

    invoke-interface {p1}, Lorg/d/a/c;->b()V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/c/b/b;->a(I)Lorg/c/b/a;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Element {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_2

    const-string p1, " not found in "

    goto :goto_1

    :cond_2
    const-string p1, " more than once in "

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Lorg/d/a/c;)V
    .locals 5

    iget-object v0, p0, Lorg/c/b/b;->f:Ljava/util/Vector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lorg/c/b/b;->c(I)I

    move-result v2

    iget-object v3, p0, Lorg/c/b/b;->f:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Illegal type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/d/a/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/d/a/c;->f(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/d/a/c;->g(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/d/a/c;->c(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/d/a/c;->b(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/d/a/c;->e(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/d/a/c;->d(Ljava/lang/String;)Lorg/d/a/c;

    goto :goto_1

    :cond_1
    check-cast v3, Lorg/c/b/a;

    invoke-virtual {v3, p1}, Lorg/c/b/a;->a(Lorg/d/a/c;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lorg/c/b/b;->f:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/c/b/b;->c(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/c/b/b;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
