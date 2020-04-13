.class public final Lorg/b/d;
.super Lorg/b/c;


# instance fields
.field public f:Lorg/c/b/b;

.field public g:Lorg/c/b/b;

.field public h:Lorg/c/b/b;

.field public i:Lorg/c/b/b;

.field public j:Lorg/c/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/b/c;-><init>()V

    const/16 v0, 0x78

    iput v0, p0, Lorg/b/d;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/b/c;-><init>()V

    iput p1, p0, Lorg/b/d;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lorg/d/a/a;)V
    .locals 6

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Fault"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lorg/d/a/a;->l()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v2, :cond_5

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Code"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/c/b/b;

    invoke-direct {v4}, Lorg/c/b/b;-><init>()V

    iput-object v4, p0, Lorg/b/d;->f:Lorg/c/b/b;

    iget-object v4, p0, Lorg/b/d;->f:Lorg/c/b/b;

    :goto_1
    invoke-virtual {v4, p1}, Lorg/c/b/b;->a(Lorg/d/a/a;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Reason"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lorg/c/b/b;

    invoke-direct {v4}, Lorg/c/b/b;-><init>()V

    iput-object v4, p0, Lorg/b/d;->g:Lorg/c/b/b;

    iget-object v4, p0, Lorg/b/d;->g:Lorg/c/b/b;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Node"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lorg/c/b/b;

    invoke-direct {v4}, Lorg/c/b/b;-><init>()V

    iput-object v4, p0, Lorg/b/d;->h:Lorg/c/b/b;

    iget-object v4, p0, Lorg/b/d;->h:Lorg/c/b/b;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Role"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lorg/c/b/b;

    invoke-direct {v4}, Lorg/c/b/b;-><init>()V

    iput-object v4, p0, Lorg/b/d;->i:Lorg/c/b/b;

    iget-object v4, p0, Lorg/b/d;->i:Lorg/c/b/b;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Detail"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lorg/c/b/b;

    invoke-direct {v4}, Lorg/c/b/b;-><init>()V

    iput-object v4, p0, Lorg/b/d;->j:Lorg/c/b/b;

    iget-object v4, p0, Lorg/b/d;->j:Lorg/c/b/b;

    goto :goto_1

    :goto_2
    invoke-interface {p1, v1, v3, v0}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unexpected tag:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Fault"

    invoke-interface {p1, v1, v0, v2}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    iget-object p1, p0, Lorg/b/d;->f:Lorg/c/b/b;

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Value"

    invoke-virtual {p1, v0, v1}, Lorg/c/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/c/b/a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/b/d;->a:Ljava/lang/String;

    iget-object p1, p0, Lorg/b/d;->g:Lorg/c/b/b;

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Text"

    invoke-virtual {p1, v0, v1}, Lorg/c/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/c/b/a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/b/d;->b:Ljava/lang/String;

    iget-object p1, p0, Lorg/b/d;->j:Lorg/c/b/b;

    iput-object p1, p0, Lorg/b/d;->d:Lorg/c/b/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/b/d;->c:Ljava/lang/String;

    return-void
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/b/d;->g:Lorg/c/b/b;

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Lorg/c/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/b/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/b/d;->g:Lorg/c/b/b;

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Lorg/c/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/b/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/b/d;->f:Lorg/c/b/b;

    const-string v2, "http://www.w3.org/2003/05/soap-envelope"

    const-string v3, "Value"

    invoke-virtual {v1, v2, v3}, Lorg/c/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/c/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/b/a;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Reason: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
