.class public Lorg/b/a/j;
.super Lorg/b/a/a;

# interfaces
.implements Lorg/b/a/f;
.implements Lorg/b/a/g;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/Vector;

.field protected e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/b/a/a;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    iput-object p1, p0, Lorg/b/a/j;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/b/a/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/b/a/i;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/b/a/i;

    invoke-virtual {p1}, Lorg/b/a/i;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Lorg/b/a/j;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/b/a/j;
    .locals 1

    new-instance v0, Lorg/b/a/i;

    invoke-direct {v0}, Lorg/b/a/i;-><init>()V

    iput-object p2, v0, Lorg/b/a/i;->h:Ljava/lang/String;

    iput-object p1, v0, Lorg/b/a/i;->i:Ljava/lang/String;

    if-nez p3, :cond_0

    sget-object p1, Lorg/b/a/i;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lorg/b/a/i;->l:Ljava/lang/Object;

    iput-object p3, v0, Lorg/b/a/i;->k:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/b/a/j;->a(Lorg/b/a/i;)Lorg/b/a/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/b/a/i;)Lorg/b/a/j;
    .locals 1

    iget-object v0, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/b/a/i;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/b/a/i;

    invoke-virtual {p1, p2}, Lorg/b/a/i;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(ILorg/b/a/i;)V
    .locals 2

    iget-object v0, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/b/a/i;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/b/a/i;

    iget-object v0, p1, Lorg/b/a/i;->h:Ljava/lang/String;

    iput-object v0, p2, Lorg/b/a/i;->h:Ljava/lang/String;

    iget-object v0, p1, Lorg/b/a/i;->i:Ljava/lang/String;

    iput-object v0, p2, Lorg/b/a/i;->i:Ljava/lang/String;

    iget v0, p1, Lorg/b/a/i;->j:I

    iput v0, p2, Lorg/b/a/i;->j:I

    iget-object v0, p1, Lorg/b/a/i;->l:Ljava/lang/Object;

    iput-object v0, p2, Lorg/b/a/i;->l:Ljava/lang/Object;

    iget-object v0, p1, Lorg/b/a/i;->n:Lorg/b/a/i;

    iput-object v0, p2, Lorg/b/a/i;->n:Lorg/b/a/i;

    iget-object v0, p1, Lorg/b/a/i;->k:Ljava/lang/Object;

    iput-object v0, p2, Lorg/b/a/i;->k:Ljava/lang/Object;

    iget-boolean p1, p1, Lorg/b/a/i;->m:Z

    iput-boolean p1, p2, Lorg/b/a/i;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p2, Lorg/b/a/i;->h:Ljava/lang/String;

    iput-object v0, p2, Lorg/b/a/i;->i:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p2, Lorg/b/a/i;->j:I

    iput-object v0, p2, Lorg/b/a/i;->l:Ljava/lang/Object;

    iput-object v0, p2, Lorg/b/a/i;->n:Lorg/b/a/i;

    iput-object p1, p2, Lorg/b/a/i;->k:Ljava/lang/Object;

    iput-boolean v1, p2, Lorg/b/a/i;->m:Z

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/b/a/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public final a_()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/b/a/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Lorg/b/a/j;
    .locals 1

    new-instance v0, Lorg/b/a/i;

    invoke-direct {v0}, Lorg/b/a/i;-><init>()V

    iput-object p1, v0, Lorg/b/a/i;->h:Ljava/lang/String;

    if-nez p2, :cond_0

    sget-object p1, Lorg/b/a/i;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lorg/b/a/i;->l:Ljava/lang/Object;

    iput-object p2, v0, Lorg/b/a/i;->k:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/b/a/j;->a(Lorg/b/a/i;)Lorg/b/a/j;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/b/a/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/b/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lorg/b/a/j;
    .locals 5

    new-instance v0, Lorg/b/a/j;

    iget-object v1, p0, Lorg/b/a/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/b/a/j;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/b/a/i;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/b/a/i;

    invoke-virtual {v3}, Lorg/b/a/i;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/b/a/i;

    invoke-virtual {v0, v3}, Lorg/b/a/j;->a(Lorg/b/a/i;)Lorg/b/a/j;

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lorg/b/a/j;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/b/a/j;

    invoke-virtual {v3}, Lorg/b/a/j;->e()Lorg/b/a/j;

    move-result-object v3

    iget-object v4, v0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/b/a/j;->a()I

    move-result v2

    if-ge v1, v2, :cond_3

    new-instance v2, Lorg/b/a/b;

    invoke-direct {v2}, Lorg/b/a/b;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/b/a/j;->a(ILorg/b/a/b;)V

    invoke-virtual {v0, v2}, Lorg/b/a/j;->a(Lorg/b/a/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lorg/b/a/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/b/a/j;

    iget-object v0, p0, Lorg/b/a/j;->c:Ljava/lang/String;

    iget-object v2, p1, Lorg/b/a/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/b/a/j;->b:Ljava/lang/String;

    iget-object v2, p1, Lorg/b/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v2, p1, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p1, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v3, Lorg/b/a/i;

    if-eqz v5, :cond_3

    instance-of v5, v4, Lorg/b/a/i;

    if-eqz v5, :cond_3

    check-cast v3, Lorg/b/a/i;

    check-cast v4, Lorg/b/a/i;

    iget-object v5, v3, Lorg/b/a/i;->h:Ljava/lang/String;

    iget-object v6, v4, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lorg/b/a/i;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4}, Lorg/b/a/i;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    instance-of v5, v3, Lorg/b/a/j;

    if-eqz v5, :cond_4

    instance-of v5, v4, Lorg/b/a/j;

    if-eqz v5, :cond_4

    check-cast v3, Lorg/b/a/j;

    check-cast v4, Lorg/b/a/j;

    invoke-virtual {v3, v4}, Lorg/b/a/j;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lorg/b/a/j;->a(Lorg/b/a/a;)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/b/a/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/b/a/j;->d:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/b/a/i;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/b/a/i;

    iget-object v2, v2, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Lorg/b/a/j;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "; "

    goto :goto_1

    :cond_0
    check-cast v2, Lorg/b/a/j;

    invoke-virtual {v2}, Lorg/b/a/j;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
