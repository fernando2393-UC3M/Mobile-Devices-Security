.class public final Lorg/b/b/b;
.super Lorg/b/b/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/b/b/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    check-cast p0, Ljava/util/zip/GZIPInputStream;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private a(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x40000

    :goto_0
    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 p2, 0x100

    new-array v1, p2, [B

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lorg/b/b/b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/b/b;Ljava/util/List;)Ljava/util/List;
    .locals 11

    const-string v0, "UTF-8"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lorg/b/b/e;->i:I

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v2, p0, Lorg/b/b/e;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v2, Lorg/c/a/b;

    invoke-direct {v2}, Lorg/c/a/b;-><init>()V

    iget-object v3, p0, Lorg/b/b/e;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v2, v1, v0}, Lorg/d/a/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lorg/b/b/e;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v0, v4}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Lorg/b/b;->a(Lorg/d/a/c;)V

    invoke-interface {v2}, Lorg/d/a/c;->b()V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-boolean v1, p0, Lorg/b/b/b;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lorg/b/b/b;->f:Ljava/lang/String;

    iput-object v2, p0, Lorg/b/b/b;->g:Ljava/lang/String;

    new-instance v1, Lorg/b/b/d;

    iget-object v3, p0, Lorg/b/b/b;->a:Ljava/net/Proxy;

    iget-object v4, p0, Lorg/b/b/b;->b:Ljava/lang/String;

    iget v5, p0, Lorg/b/b/b;->c:I

    iget v6, p0, Lorg/b/b/b;->d:I

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/b/b/d;-><init>(Ljava/net/Proxy;Ljava/lang/String;II)V

    const-string v3, "User-Agent"

    const-string v4, "ksoap2-android/2.6.0+"

    invoke-interface {v1, v3, v4}, Lorg/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p2, Lorg/b/b;->f:I

    const/16 v4, 0x78

    if-eq v3, v4, :cond_2

    const-string v3, "SOAPAction"

    invoke-interface {v1, v3, p1}, Lorg/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget p1, p2, Lorg/b/b;->f:I

    if-ne p1, v4, :cond_3

    const-string p1, "Content-Type"

    const-string v3, "application/soap+xml;charset=utf-8"

    goto :goto_2

    :cond_3
    const-string p1, "Content-Type"

    const-string v3, "text/xml;charset=utf-8"

    :goto_2
    invoke-interface {v1, p1, v3}, Lorg/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, p1, v3}, Lorg/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_4

    move v3, p1

    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/b/a;

    iget-object v5, v4, Lorg/b/a;->a:Ljava/lang/String;

    iget-object v4, v4, Lorg/b/a;->b:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Lorg/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const-string p3, "POST"

    invoke-interface {v1, p3}, Lorg/b/b/c;->a(Ljava/lang/String;)V

    const-string p3, "Content-Length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p3, v3}, Lorg/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    array-length p3, v0

    invoke-interface {v1, p3}, Lorg/b/b/c;->a(I)V

    invoke-interface {v1}, Lorg/b/b/c;->d()Ljava/io/OutputStream;

    move-result-object p3

    array-length v3, v0

    invoke-virtual {p3, v0, p1, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    invoke-interface {v1}, Lorg/b/b/c;->c()I

    move-result p3

    const/16 v0, 0x2000

    :try_start_0
    invoke-interface {v1}, Lorg/b/b/c;->b()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v5, p1

    move v6, v5

    move v4, v0

    :goto_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_8

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/b/a;

    iget-object v8, v7, Lorg/b/a;->a:Ljava/lang/String;

    const/4 v9, 0x1

    if-eqz v8, :cond_7

    iget-object v8, v7, Lorg/b/a;->a:Ljava/lang/String;

    const-string v10, "content-length"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v7, Lorg/b/a;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_5

    :try_start_2
    iget-object v8, v7, Lorg/b/a;->b:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_0
    move v4, v0

    :cond_5
    :goto_5
    :try_start_3
    iget-object v8, v7, Lorg/b/a;->a:Ljava/lang/String;

    const-string v10, "Content-Type"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lorg/b/a;->b:Ljava/lang/String;

    const-string v10, "xml"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v9

    :cond_6
    iget-object v8, v7, Lorg/b/a;->a:Ljava/lang/String;

    const-string v10, "Content-Encoding"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v7, v7, Lorg/b/a;->b:Ljava/lang/String;

    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v9

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    const/16 p1, 0xc8

    if-eq p3, p1, :cond_a

    const/16 p1, 0xca

    if-ne p3, p1, :cond_9

    goto :goto_6

    :cond_9
    new-instance p1, Lorg/b/b/a;

    const-string v0, "HTTP request failed, HTTP status: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p3, v3}, Lorg/b/b/a;-><init>(Ljava/lang/String;ILjava/util/List;)V

    throw p1

    :cond_a
    :goto_6
    if-lez v4, :cond_c

    if-eqz v5, :cond_b

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-interface {v1}, Lorg/b/b/c;->e()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p1, p3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p1}, Lorg/b/b/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_9

    :cond_b
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-interface {v1}, Lorg/b/b/c;->e()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p1, p3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :cond_c
    move-object p1, v2

    goto :goto_9

    :catch_1
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception p3

    move v5, p1

    move v6, v5

    move-object p1, p3

    move v4, v0

    move-object v3, v2

    :goto_7
    if-lez v4, :cond_e

    if-eqz v5, :cond_d

    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-interface {v1}, Lorg/b/b/c;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p3}, Lorg/b/b/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p3

    goto :goto_8

    :cond_d
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-interface {v1}, Lorg/b/b/c;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_8

    :cond_e
    move-object p3, v2

    :goto_8
    instance-of v0, p1, Lorg/b/b/a;

    if-eqz v0, :cond_10

    if-nez v6, :cond_10

    iget-boolean p2, p0, Lorg/b/b/b;->e:Z

    if-eqz p2, :cond_f

    if-eqz p3, :cond_f

    invoke-direct {p0, p3, v4}, Lorg/b/b/b;->a(Ljava/io/InputStream;I)Ljava/io/InputStream;

    :cond_f
    invoke-interface {v1}, Lorg/b/b/c;->a()V

    throw p1

    :cond_10
    move-object p1, p3

    :goto_9
    iget-boolean p3, p0, Lorg/b/b/b;->e:Z

    if-eqz p3, :cond_11

    invoke-direct {p0, p1, v4}, Lorg/b/b/b;->a(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p1

    :cond_11
    if-eqz p1, :cond_12

    new-instance p3, Lorg/c/a/a;

    invoke-direct {p3}, Lorg/c/a/a;-><init>()V

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {p3, v0}, Lorg/d/a/a;->b(Ljava/lang/String;)V

    invoke-interface {p3, p1, v2}, Lorg/d/a/a;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/b/b;->a(Lorg/d/a/a;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_12
    invoke-interface {v1}, Lorg/b/b/c;->a()V

    return-object v3
.end method
