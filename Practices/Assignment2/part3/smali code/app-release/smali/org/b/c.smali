.class public Lorg/b/c;
.super Ljava/io/IOException;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/c/b/b;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    const/16 v0, 0x6e

    iput v0, p0, Lorg/b/c;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput p1, p0, Lorg/b/c;->e:I

    return-void
.end method


# virtual methods
.method public a(Lorg/d/a/a;)V
    .locals 4

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Fault"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/d/a/a;->l()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v2, :cond_5

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "detail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lorg/c/b/b;

    invoke-direct {v0}, Lorg/c/b/b;-><init>()V

    iput-object v0, p0, Lorg/b/c;->d:Lorg/c/b/b;

    iget-object v0, p0, Lorg/b/c;->d:Lorg/c/b/b;

    invoke-virtual {v0, p1}, Lorg/c/b/b;->a(Lorg/d/a/a;)V

    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Fault"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_1
    const-string v3, "faultcode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/d/a/a;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/b/c;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, "faultstring"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lorg/d/a/a;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/b/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v3, "faultactor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lorg/d/a/a;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/b/c;->c:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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
    :goto_2
    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v2, "Fault"

    invoke-interface {p1, v1, v0, v2}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoapFault - faultcode: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' faultstring: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' faultactor: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' detail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/b/c;->d:Lorg/c/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
