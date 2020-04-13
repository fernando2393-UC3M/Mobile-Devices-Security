.class final Lorg/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/b/a/h;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/d/a/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Lorg/d/a/a;->m()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x62

    if-eq p2, v0, :cond_3

    const/16 v0, 0x69

    if-eq p2, v0, :cond_2

    const/16 v0, 0x6c

    if-eq p2, v0, :cond_1

    const/16 v0, 0x73

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :cond_2
    new-instance p2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_3
    new-instance p2, Ljava/lang/Boolean;

    invoke-static {p1}, Lorg/b/b;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2
.end method

.method public final a(Lorg/b/a/l;)V
    .locals 3

    iget-object v0, p1, Lorg/b/a/l;->j:Ljava/lang/String;

    const-string v1, "int"

    sget-object v2, Lorg/b/a/i;->c:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/b/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/b/a/h;)V

    iget-object v0, p1, Lorg/b/a/l;->j:Ljava/lang/String;

    const-string v1, "long"

    sget-object v2, Lorg/b/a/i;->d:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/b/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/b/a/h;)V

    iget-object v0, p1, Lorg/b/a/l;->j:Ljava/lang/String;

    const-string v1, "string"

    sget-object v2, Lorg/b/a/i;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/b/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/b/a/h;)V

    iget-object v0, p1, Lorg/b/a/l;->j:Ljava/lang/String;

    const-string v1, "boolean"

    sget-object v2, Lorg/b/a/i;->e:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/b/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/b/a/h;)V

    return-void
.end method

.method public final a(Lorg/d/a/c;Ljava/lang/Object;)V
    .locals 7

    instance-of v0, p2, Lorg/b/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/b/a/a;

    invoke-virtual {v0}, Lorg/b/a/a;->a()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    new-instance v3, Lorg/b/a/b;

    invoke-direct {v3}, Lorg/b/a/b;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/b/a/a;->a(ILorg/b/a/b;)V

    invoke-virtual {v3}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/b/a/i;->i:Ljava/lang/String;

    iget-object v5, v3, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-interface {p1, v4, v5, v3}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lorg/b/a/e;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/b/a/e;

    invoke-interface {v0}, Lorg/b/a/e;->a()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_5

    new-instance v3, Lorg/b/a/b;

    invoke-direct {v3}, Lorg/b/a/b;-><init>()V

    invoke-interface {v0, v1, v3}, Lorg/b/a/e;->a(ILorg/b/a/b;)V

    invoke-virtual {v3}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lorg/b/a/i;->i:Ljava/lang/String;

    iget-object v5, v3, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const-string v3, ""

    :goto_3
    invoke-interface {p1, v4, v5, v3}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    instance-of v0, p2, Lorg/b/a/m;

    if-nez v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/d/a/c;->d(Ljava/lang/String;)Lorg/d/a/c;

    :cond_6
    return-void
.end method
