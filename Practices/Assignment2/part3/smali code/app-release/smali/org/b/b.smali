.class public Lorg/b/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:[Lorg/c/b/a;

.field public d:[Lorg/c/b/a;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x6e

    iput v0, p0, Lorg/b/b;->f:I

    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    iput-object v0, p0, Lorg/b/b;->i:Ljava/lang/String;

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    iput-object v0, p0, Lorg/b/b;->j:Ljava/lang/String;

    const-string v0, "http://schemas.xmlsoap.org/soap/encoding/"

    iput-object v0, p0, Lorg/b/b;->h:Ljava/lang/String;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    iput-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lorg/d/a/a;)V
    .locals 8

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v1, "Envelope"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/b;->e:Ljava/lang/String;

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v2, :cond_4

    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/b/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Header"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    new-instance v0, Lorg/c/b/b;

    invoke-direct {v0}, Lorg/c/b/b;-><init>()V

    invoke-virtual {v0, p1}, Lorg/c/b/b;->a(Lorg/d/a/a;)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Lorg/c/b/b;->c()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {v0, v4}, Lorg/c/b/b;->a(I)Lorg/c/b/a;

    move-result-object v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v4, v5, [Lorg/c/b/a;

    iput-object v4, p0, Lorg/b/b;->c:[Lorg/c/b/a;

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Lorg/c/b/b;->c()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v0, v3}, Lorg/c/b/b;->a(I)Lorg/c/b/a;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lorg/b/b;->c:[Lorg/c/b/a;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    move v4, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v3, "Header"

    invoke-interface {p1, v1, v0, v3}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    :cond_4
    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v3, "Body"

    invoke-interface {p1, v2, v0, v3}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v2, "encodingStyle"

    invoke-interface {p1, v0, v2}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/b;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/b/b;->b(Lorg/d/a/a;)V

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v2, "Body"

    invoke-interface {p1, v1, v0, v2}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v2, "Envelope"

    invoke-interface {p1, v1, v0, v2}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/d/a/c;)V
    .locals 3

    const-string v0, "i"

    iget-object v1, p0, Lorg/b/b;->i:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "d"

    iget-object v1, p0, Lorg/b/b;->j:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c"

    iget-object v1, p0, Lorg/b/b;->h:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "v"

    iget-object v1, p0, Lorg/b/b;->g:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-object v0, p0, Lorg/b/b;->d:[Lorg/c/b/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/b/b;->d:[Lorg/c/b/a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/c/b/a;->a(Lorg/d/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    invoke-virtual {p0, p1}, Lorg/b/b;->b(Lorg/d/a/c;)V

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-object v0, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v0, v1}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    return-void
.end method

.method public b(Lorg/d/a/a;)V
    .locals 2

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/b/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/b/b;->f:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_0

    new-instance v1, Lorg/b/c;

    invoke-direct {v1, v0}, Lorg/b/c;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/b/d;

    invoke-direct {v1, v0}, Lorg/b/d;-><init>(I)V

    :goto_0
    invoke-virtual {v1, p1}, Lorg/b/c;->a(Lorg/d/a/a;)V

    iput-object v1, p0, Lorg/b/b;->a:Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p0, Lorg/b/b;->a:Ljava/lang/Object;

    instance-of v1, v0, Lorg/c/b/b;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/c/b/b;

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/c/b/b;

    invoke-direct {v0}, Lorg/c/b/b;-><init>()V

    :goto_1
    invoke-virtual {v0, p1}, Lorg/c/b/b;->a(Lorg/d/a/a;)V

    iput-object v0, p0, Lorg/b/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public b(Lorg/d/a/c;)V
    .locals 3

    iget-object v0, p0, Lorg/b/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/b/b;->g:Ljava/lang/String;

    const-string v2, "encodingStyle"

    invoke-interface {p1, v1, v2, v0}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_0
    iget-object v0, p0, Lorg/b/b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/c/b/b;

    invoke-virtual {v0, p1}, Lorg/c/b/b;->a(Lorg/d/a/c;)V

    return-void
.end method
