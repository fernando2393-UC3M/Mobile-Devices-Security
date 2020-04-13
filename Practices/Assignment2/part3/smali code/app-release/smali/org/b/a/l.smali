.class public final Lorg/b/a/l;
.super Lorg/b/b;


# static fields
.field static final k:Lorg/b/a/h;


# instance fields
.field public l:Ljava/util/Hashtable;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field protected q:Ljava/util/Hashtable;

.field protected r:Ljava/util/Hashtable;

.field protected s:Z

.field t:Ljava/util/Hashtable;

.field u:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/b/a/c;

    invoke-direct {v0}, Lorg/b/a/c;-><init>()V

    sput-object v0, Lorg/b/a/l;->k:Lorg/b/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/b/b;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/b/a/l;->l:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/b/a/l;->q:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/b/a/l;->r:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/b/a/l;->s:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/b/a/l;->t:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string v1, "Array"

    sget-object v2, Lorg/b/a/i;->f:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/b/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/b/a/h;)V

    sget-object v0, Lorg/b/a/l;->k:Lorg/b/a/h;

    invoke-interface {v0, p0}, Lorg/b/a/h;->a(Lorg/b/a/l;)V

    return-void
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 2

    if-nez p0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method private a(Lorg/d/a/a;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/b/a/i;)Ljava/lang/Object;
    .locals 7

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "href"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lorg/b/a/l;->t:Ljava/util/Hashtable;

    invoke-virtual {p5, p4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    instance-of p6, p5, Lorg/b/a/d;

    if-eqz p6, :cond_1

    :cond_0
    new-instance p6, Lorg/b/a/d;

    invoke-direct {p6}, Lorg/b/a/d;-><init>()V

    check-cast p5, Lorg/b/a/d;

    iput-object p5, p6, Lorg/b/a/d;->a:Lorg/b/a/d;

    iput-object p2, p6, Lorg/b/a/d;->b:Ljava/lang/Object;

    iput p3, p6, Lorg/b/a/d;->c:I

    iget-object p2, p0, Lorg/b/a/l;->t:Ljava/util/Hashtable;

    invoke-virtual {p2, p4, p6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p5, v2

    :cond_1
    invoke-interface {p1}, Lorg/d/a/a;->l()I

    invoke-interface {p1, v3, v2, v0}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "href at root level?!?"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p2, p0, Lorg/b/a/l;->i:Ljava/lang/String;

    const-string p3, "nil"

    invoke-interface {p1, p2, p3}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-interface {p1, v2, p3}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/b/a/l;->i:Ljava/lang/String;

    const-string v1, "null"

    invoke-interface {p1, p2, v1}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {p2}, Lorg/b/b;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    invoke-interface {p1, v3, v2, v0}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object p5, v2

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/b/a/l;->i:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p1, p2, v1}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/16 p4, 0x3a

    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    add-int/lit8 p5, p4, 0x1

    invoke-virtual {p2, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    const/4 v5, -0x1

    if-ne p4, v5, :cond_6

    const-string p4, ""

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-interface {p1, p4}, Lorg/d/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_7
    if-nez p5, :cond_9

    if-nez p4, :cond_9

    iget-object p4, p0, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string p5, "arrayType"

    invoke-interface {p1, p4, p5}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_8

    iget-object p4, p0, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string p5, "Array"

    goto :goto_1

    :cond_8
    iget-object p4, p6, Lorg/b/a/i;->l:Ljava/lang/Object;

    invoke-direct {p0, p4, v2}, Lorg/b/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    aget-object p5, p4, v1

    check-cast p5, Ljava/lang/String;

    aget-object p4, p4, v4

    check-cast p4, Ljava/lang/String;

    move-object v6, p5

    move-object p5, p4

    move-object p4, v6

    :cond_9
    :goto_1
    if-nez p2, :cond_a

    iput-boolean v4, p0, Lorg/b/a/l;->m:Z

    :cond_a
    invoke-direct {p0, p1, p4, p5, p6}, Lorg/b/a/l;->a(Lorg/d/a/a;Ljava/lang/String;Ljava/lang/String;Lorg/b/a/i;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-direct {p0, p1, p4, p5}, Lorg/b/a/l;->a(Lorg/d/a/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    :cond_b
    move-object p5, p2

    :goto_2
    if-eqz p3, :cond_c

    invoke-direct {p0, p3, p5}, Lorg/b/a/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    :goto_3
    invoke-interface {p1, v3, v2, v0}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object p5
.end method

.method private a(Lorg/d/a/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14

    move-object v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p1}, Lorg/d/a/a;->getAttributeCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    new-instance v5, Lorg/b/a/b;

    invoke-direct {v5}, Lorg/b/a/b;-><init>()V

    invoke-interface {p1, v4}, Lorg/d/a/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/d/a/a;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/b/a/b;->a(Ljava/lang/Object;)V

    invoke-interface {p1, v4}, Lorg/d/a/a;->d(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/b/a/i;->i:Ljava/lang/String;

    invoke-interface {p1}, Lorg/d/a/a;->h()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/b/a/i;->l:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/d/a/a;->j()I

    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v10, 0x3

    if-ne v4, v5, :cond_2

    invoke-interface {p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Lorg/b/a/k;

    invoke-direct {v4, v0, v1, v6}, Lorg/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v3

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/b/a/b;

    invoke-virtual {v4, v11}, Lorg/b/a/k;->a(Lorg/b/a/b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/d/a/a;->j()I

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v4

    if-ne v4, v10, :cond_3

    new-instance v4, Lorg/b/a/j;

    invoke-direct {v4, v0, v1}, Lorg/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/b/a/b;

    invoke-virtual {v4, v11}, Lorg/b/a/j;->a(Lorg/b/a/b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v6

    :cond_4
    :goto_3
    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v5

    const/4 v11, 0x2

    if-ne v5, v11, :cond_9

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Malformed input: Mixed content"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    new-instance v11, Lorg/b/a/j;

    invoke-direct {v11, v0, v1}, Lorg/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/b;

    invoke-virtual {v11, v0}, Lorg/b/a/j;->a(Lorg/b/a/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v0

    if-eq v0, v10, :cond_8

    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lorg/b/a/j;->b()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/b/a/i;->g:Lorg/b/a/i;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    invoke-direct/range {v0 .. v6}, Lorg/b/a/l;->a(Lorg/d/a/a;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/b/a/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v12, v13, v0}, Lorg/b/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/b/a/j;

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    goto :goto_6

    :cond_8
    move-object v4, v11

    :cond_9
    invoke-interface {p1, v10, v9, v8}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private a(Lorg/d/a/a;Ljava/lang/String;Ljava/lang/String;Lorg/b/a/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/b/a/l;->q:Ljava/util/Hashtable;

    new-instance v1, Lorg/b/a/k;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lorg/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    instance-of v1, v0, Lorg/b/a/h;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/b/a/h;

    invoke-interface {v0, p1, p3}, Lorg/b/a/h;->a(Lorg/d/a/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v1, v0, Lorg/b/a/j;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/b/a/j;

    invoke-virtual {v0}, Lorg/b/a/j;->e()Lorg/b/a/j;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-class v1, Lorg/b/a/j;

    if-ne v0, v1, :cond_3

    new-instance v0, Lorg/b/a/j;

    invoke-direct {v0, p2, p3}, Lorg/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_0

    :cond_3
    :try_start_0
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    instance-of p3, p2, Lorg/b/a/e;

    if-eqz p3, :cond_4

    invoke-interface {p1}, Lorg/d/a/a;->getAttributeCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_4

    new-instance v1, Lorg/b/a/b;

    invoke-direct {v1}, Lorg/b/a/b;-><init>()V

    invoke-interface {p1, v0}, Lorg/d/a/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/d/a/a;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/a/b;->a(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/d/a/a;->d(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    invoke-interface {p1}, Lorg/d/a/a;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/b/a/i;->l:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    instance-of p3, p2, Lorg/b/a/j;

    if-eqz p3, :cond_5

    move-object p3, p2

    check-cast p3, Lorg/b/a/j;

    invoke-direct {p0, p1, p3}, Lorg/b/a/l;->a(Lorg/d/a/a;Lorg/b/a/j;)V

    goto :goto_3

    :cond_5
    instance-of p3, p2, Lorg/b/a/g;

    if-eqz p3, :cond_8

    instance-of p3, p2, Lorg/b/a/f;

    if-eqz p3, :cond_7

    move-object p3, p2

    check-cast p3, Lorg/b/a/f;

    invoke-interface {p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-interface {p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_6
    const-string p4, ""

    :goto_2
    invoke-interface {p3, p4}, Lorg/b/a/f;->a(Ljava/lang/Object;)V

    :cond_7
    move-object p3, p2

    check-cast p3, Lorg/b/a/g;

    invoke-direct {p0, p1, p3}, Lorg/b/a/l;->a(Lorg/d/a/a;Lorg/b/a/g;)V

    goto :goto_3

    :cond_8
    instance-of p3, p2, Ljava/util/Vector;

    if-eqz p3, :cond_9

    move-object p3, p2

    check-cast p3, Ljava/util/Vector;

    iget-object p4, p4, Lorg/b/a/i;->n:Lorg/b/a/i;

    invoke-direct {p0, p1, p3, p4}, Lorg/b/a/l;->a(Lorg/d/a/a;Ljava/util/Vector;Lorg/b/a/i;)V

    :goto_3
    return-object p2

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "no deserializer for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/b/a/l;->t:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/b/a/d;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/b/a/d;

    :cond_0
    iget-object v1, v0, Lorg/b/a/d;->b:Ljava/lang/Object;

    instance-of v1, v1, Lorg/b/a/g;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/b/a/d;->b:Ljava/lang/Object;

    check-cast v1, Lorg/b/a/g;

    iget v2, v0, Lorg/b/a/d;->c:I

    invoke-interface {v1, v2, p2}, Lorg/b/a/g;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/b/a/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Vector;

    iget v2, v0, Lorg/b/a/d;->c:I

    invoke-virtual {v1, p2, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_0
    iget-object v0, v0, Lorg/b/a/d;->a:Lorg/b/a/d;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lorg/b/a/l;->t:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "double ID"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/d/a/a;Ljava/util/Vector;Lorg/b/a/i;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, v7, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string v2, "arrayType"

    invoke-interface {v8, v1, v2}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v3, "["

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v8, v0}, Lorg/d/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v5}, Lorg/b/a/l;->a(Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v5, :cond_1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->setSize(I)V

    move-object v13, v0

    move-object v14, v4

    move v12, v11

    goto :goto_1

    :cond_1
    move-object v13, v0

    move v12, v2

    move-object v14, v4

    goto :goto_1

    :cond_2
    move v1, v0

    move v12, v2

    move-object v13, v10

    move-object v14, v13

    :goto_1
    if-nez p3, :cond_3

    sget-object v0, Lorg/b/a/i;->g:Lorg/b/a/i;

    move-object v15, v0

    goto :goto_2

    :cond_3
    move-object/from16 v15, p3

    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->l()I

    iget-object v0, v7, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string v2, "offset"

    invoke-interface {v8, v0, v2}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v11}, Lorg/b/a/l;->a(Ljava/lang/String;II)I

    move-result v0

    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->i()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget-object v2, v7, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string v3, "position"

    invoke-interface {v8, v2, v3}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v0}, Lorg/b/a/l;->a(Ljava/lang/String;II)I

    move-result v6

    if-eqz v12, :cond_4

    if-lt v6, v1, :cond_4

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v9, v0}, Ljava/util/Vector;->setSize(I)V

    move/from16 v16, v0

    goto :goto_4

    :cond_4
    move/from16 v16, v1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v6

    move-object v4, v13

    move-object v5, v14

    move v11, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/b/a/l;->a(Lorg/d/a/a;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/b/a/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0, v11}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v11, 0x1

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->l()I

    move/from16 v1, v16

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v8, v3, v10, v10}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/d/a/a;Lorg/b/a/g;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->l()I

    move-result v0
    :try_end_0
    .catch Lorg/d/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    instance-of v0, v9, Lorg/b/a/f;

    if-eqz v0, :cond_1

    move-object v0, v9

    check-cast v0, Lorg/b/a/f;

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-interface {v0, v1}, Lorg/b/a/f;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->l()I

    move-result v0

    :goto_1
    const/4 v10, 0x3

    if-eq v0, v10, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v11

    iget-boolean v0, v7, Lorg/b/a/l;->m:Z

    if-eqz v0, :cond_3

    instance-of v0, v9, Lorg/b/a/j;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v10, v9

    check-cast v10, Lorg/b/a/j;

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lorg/b/a/g;->b()I

    move-result v3

    invoke-virtual {v10}, Lorg/b/a/j;->d()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/b/a/i;->g:Lorg/b/a/i;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/b/a/l;->a(Lorg/d/a/a;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/b/a/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Lorg/b/a/j;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/b/a/j;

    goto/16 :goto_6

    :cond_3
    :goto_2
    new-instance v12, Lorg/b/a/i;

    invoke-direct {v12}, Lorg/b/a/i;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/b/a/g;->b()I

    move-result v13

    const/4 v14, 0x0

    move v0, v14

    move v15, v0

    :goto_3
    if-ge v15, v13, :cond_7

    if-nez v0, :cond_7

    invoke-virtual {v12}, Lorg/b/a/i;->a()V

    invoke-interface {v9, v15, v12}, Lorg/b/a/g;->a(ILorg/b/a/i;)V

    iget-object v1, v12, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v12, Lorg/b/a/i;->i:Ljava/lang/String;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, v12, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Lorg/b/a/i;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lorg/b/a/l;->a(Lorg/d/a/a;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/b/a/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v15, v0}, Lorg/b/a/g;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    if-nez v0, :cond_a

    iget-boolean v0, v7, Lorg/b/a/l;->p:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->j()I

    move-result v0

    if-ne v0, v10, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown Property: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, v9, Lorg/b/a/e;

    if-eqz v0, :cond_b

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->getAttributeCount()I

    move-result v0

    :goto_5
    if-ge v14, v0, :cond_b

    new-instance v1, Lorg/b/a/b;

    invoke-direct {v1}, Lorg/b/a/b;-><init>()V

    invoke-interface {v8, v14}, Lorg/d/a/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-interface {v8, v14}, Lorg/d/a/a;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/a/b;->a(Ljava/lang/Object;)V

    invoke-interface {v8, v14}, Lorg/d/a/a;->d(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/b/a/i;->l:Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->l()I

    move-result v0
    :try_end_1
    .catch Lorg/d/a/b; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    instance-of v0, v9, Lorg/b/a/f;

    if-eqz v0, :cond_1

    move-object v0, v9

    check-cast v0, Lorg/b/a/f;

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/d/a/a;->d()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    const-string v1, ""

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    invoke-interface {v8, v10, v0, v0}, Lorg/d/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/d/a/a;Lorg/b/a/j;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/d/a/a;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Lorg/d/a/a;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/d/a/a;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/b/a/l;->a(Lorg/d/a/a;Lorg/b/a/g;)V

    return-void
.end method

.method private a(Lorg/d/a/c;Ljava/lang/Object;Lorg/b/a/i;)V
    .locals 6

    if-eqz p2, :cond_7

    sget-object v0, Lorg/b/a/k;->f:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/b/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p3, Lorg/b/a/i;->m:Z

    const/4 v3, 0x2

    if-nez v2, :cond_4

    aget-object v2, v1, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/b/a/l;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p3, Lorg/b/a/i;->l:Ljava/lang/Object;

    if-eq v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lorg/d/a/c;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/b/a/l;->i:Ljava/lang/String;

    const-string v4, "type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v0}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_3
    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/b/a/l;->a(Lorg/d/a/c;Ljava/lang/Object;Lorg/b/a/i;Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_0
    iget-object p3, p0, Lorg/b/a/l;->u:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_5

    iget-object p3, p0, Lorg/b/a/l;->u:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    iget-object v2, p0, Lorg/b/a/l;->u:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    const-string p2, "href"

    aget-object v2, v1, v3

    if-nez v2, :cond_6

    const-string v1, "#o"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-interface {p1, v0, p2, p3}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    return-void

    :cond_7
    :goto_2
    iget-object p2, p0, Lorg/b/a/l;->i:Ljava/lang/String;

    iget p3, p0, Lorg/b/a/l;->f:I

    const/16 v0, 0x78

    if-lt p3, v0, :cond_8

    const-string p3, "nil"

    goto :goto_3

    :cond_8
    const-string p3, "null"

    :goto_3
    const-string v0, "true"

    invoke-interface {p1, p2, p3, v0}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    return-void
.end method

.method private a(Lorg/d/a/c;Ljava/lang/Object;Lorg/b/a/i;Ljava/lang/Object;)V
    .locals 0

    if-eqz p4, :cond_0

    check-cast p4, Lorg/b/a/h;

    invoke-interface {p4, p1, p2}, Lorg/b/a/h;->a(Lorg/d/a/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of p4, p2, Lorg/b/a/g;

    if-nez p4, :cond_4

    sget-object p4, Lorg/b/a/k;->f:Ljava/lang/Object;

    if-eq p2, p4, :cond_4

    sget-object p4, Lorg/b/a/k;->e:Ljava/lang/Object;

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    instance-of p4, p2, Lorg/b/a/e;

    if-eqz p4, :cond_2

    check-cast p2, Lorg/b/a/e;

    invoke-static {p1, p2}, Lorg/b/a/l;->a(Lorg/d/a/c;Lorg/b/a/e;)V

    return-void

    :cond_2
    instance-of p4, p2, Ljava/util/Vector;

    if-eqz p4, :cond_3

    check-cast p2, Ljava/util/Vector;

    iget-object p3, p3, Lorg/b/a/i;->n:Lorg/b/a/i;

    invoke-direct {p0, p1, p2, p3}, Lorg/b/a/l;->a(Lorg/d/a/c;Ljava/util/Vector;Lorg/b/a/i;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Cannot serialize: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    instance-of p3, p2, Ljava/util/ArrayList;

    if-eqz p3, :cond_5

    check-cast p2, Lorg/b/a/g;

    invoke-direct {p0, p1, p2}, Lorg/b/a/l;->a(Lorg/d/a/c;Lorg/b/a/g;)V

    return-void

    :cond_5
    check-cast p2, Lorg/b/a/g;

    invoke-direct {p0, p1, p2}, Lorg/b/a/l;->b(Lorg/d/a/c;Lorg/b/a/g;)V

    return-void
.end method

.method private a(Lorg/d/a/c;Ljava/util/Vector;Lorg/b/a/i;)V
    .locals 10

    const-string v0, "item"

    const/4 v1, 0x0

    if-nez p3, :cond_0

    sget-object p3, Lorg/b/a/i;->g:Lorg/b/a/i;

    goto :goto_0

    :cond_0
    instance-of v2, p3, Lorg/b/a/i;

    if-eqz v2, :cond_1

    iget-object v2, p3, Lorg/b/a/i;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p3, Lorg/b/a/i;->h:Ljava/lang/String;

    iget-object v2, p3, Lorg/b/a/i;->i:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v1

    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, p3, Lorg/b/a/i;->l:Ljava/lang/Object;

    invoke-direct {p0, v4, v1}, Lorg/b/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-boolean v4, p0, Lorg/b/a/l;->m:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string v7, "arrayType"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v6

    check-cast v9, Ljava/lang/String;

    invoke-interface {p1, v9, v6}, Lorg/d/a/c;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v7, v1}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    aget-object v1, v1, v6

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_3
    :goto_2
    move v1, v6

    move v4, v1

    :goto_3
    if-ge v1, v3, :cond_6

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    move v4, v5

    goto :goto_4

    :cond_4
    invoke-interface {p1, v2, v0}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string v7, "position"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v4, v7, v8}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    move v4, v6

    :cond_5
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, p1, v7, p3}, Lorg/b/a/l;->a(Lorg/d/a/c;Ljava/lang/Object;Lorg/b/a/i;)V

    invoke-interface {p1, v2, v0}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private static a(Lorg/d/a/c;Lorg/b/a/e;)V
    .locals 5

    invoke-interface {p1}, Lorg/b/a/e;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Lorg/b/a/b;

    invoke-direct {v2}, Lorg/b/a/b;-><init>()V

    invoke-interface {p1, v1, v2}, Lorg/b/a/e;->a(ILorg/b/a/b;)V

    invoke-virtual {v2}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/b/a/i;->i:Ljava/lang/String;

    iget-object v4, v2, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/b/a/b;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v4, v2}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lorg/d/a/c;Lorg/b/a/g;)V
    .locals 12

    instance-of v0, p2, Lorg/b/a/e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/b/a/e;

    invoke-static {p1, v0}, Lorg/b/a/l;->a(Lorg/d/a/c;Lorg/b/a/e;)V

    :cond_0
    check-cast p2, Ljava/util/ArrayList;

    move-object v0, p2

    check-cast v0, Lorg/b/a/g;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-instance v1, Lorg/b/a/i;

    invoke-direct {v1}, Lorg/b/a/i;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_7

    invoke-interface {v0, v3}, Lorg/b/a/g;->a(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v1}, Lorg/b/a/g;->a(ILorg/b/a/i;)V

    instance-of v5, v4, Lorg/b/a/j;

    const/4 v6, 0x1

    if-nez v5, :cond_2

    iget v5, v1, Lorg/b/a/i;->j:I

    and-int/2addr v5, v6

    if-nez v5, :cond_6

    invoke-interface {v0, v3}, Lorg/b/a/g;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/b/a/l;->n:Z

    if-nez v4, :cond_6

    :cond_1
    sget-object v4, Lorg/b/a/k;->e:Ljava/lang/Object;

    if-eq v5, v4, :cond_6

    iget-object v4, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    iget-object v6, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-interface {p1, v4, v6}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    invoke-direct {p0, p1, v5, v1}, Lorg/b/a/l;->a(Lorg/d/a/c;Ljava/lang/Object;Lorg/b/a/i;)V

    iget-object v4, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    iget-object v5, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    goto :goto_3

    :cond_2
    check-cast v4, Lorg/b/a/j;

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lorg/b/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v7, v5, v6

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    goto :goto_1

    :cond_3
    aget-object v8, v5, v6

    check-cast v8, Ljava/lang/String;

    :goto_1
    iget-object v9, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v5, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    goto :goto_2

    :cond_4
    aget-object v5, v5, v2

    check-cast v5, Ljava/lang/String;

    :goto_2
    invoke-interface {p1, v5, v8}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-boolean v9, p0, Lorg/b/a/l;->m:Z

    if-nez v9, :cond_5

    invoke-interface {p1, v5, v6}, Lorg/d/a/c;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lorg/b/a/l;->i:Ljava/lang/String;

    const-string v10, "type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v10, v6}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_5
    invoke-direct {p0, p1, v4}, Lorg/b/a/l;->b(Lorg/d/a/c;Lorg/b/a/g;)V

    invoke-interface {p1, v5, v8}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {p1, v0}, Lorg/b/a/l;->d(Lorg/d/a/c;Lorg/b/a/g;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    if-nez p1, :cond_2

    instance-of p1, p2, Lorg/b/a/j;

    if-nez p1, :cond_1

    instance-of p1, p2, Lorg/b/a/k;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p2

    :cond_2
    :goto_1
    nop

    instance-of p2, p1, Lorg/b/a/j;

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    check-cast p1, Lorg/b/a/j;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/b/a/j;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    invoke-virtual {p1}, Lorg/b/a/j;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    aput-object v5, p2, v1

    aput-object v5, p2, v0

    return-object p2

    :cond_3
    instance-of p2, p1, Lorg/b/a/k;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/b/a/k;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/b/a/k;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    invoke-virtual {p1}, Lorg/b/a/k;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    aput-object v5, p2, v1

    sget-object p1, Lorg/b/a/l;->k:Lorg/b/a/h;

    aput-object p1, p2, v0

    return-object p2

    :cond_4
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_5

    sget-object p2, Lorg/b/a/i;->a:Ljava/lang/Class;

    if-eq p1, p2, :cond_5

    iget-object p2, p0, Lorg/b/a/l;->r:Ljava/util/Hashtable;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    new-array p1, v4, [Ljava/lang/Object;

    iget-object p2, p0, Lorg/b/a/l;->j:Ljava/lang/String;

    aput-object p2, p1, v3

    const-string p2, "anyType"

    aput-object p2, p1, v2

    aput-object v5, p1, v1

    aput-object v5, p1, v0

    return-object p1
.end method

.method private b(Lorg/d/a/c;Lorg/b/a/g;)V
    .locals 1

    instance-of v0, p2, Lorg/b/a/e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/b/a/e;

    invoke-static {p1, v0}, Lorg/b/a/l;->a(Lorg/d/a/c;Lorg/b/a/e;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/b/a/l;->c(Lorg/d/a/c;Lorg/b/a/g;)V

    return-void
.end method

.method private c(Lorg/d/a/c;Lorg/b/a/g;)V
    .locals 12

    invoke-interface {p2}, Lorg/b/a/g;->b()I

    move-result v0

    new-instance v1, Lorg/b/a/i;

    invoke-direct {v1}, Lorg/b/a/i;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-interface {p2, v3}, Lorg/b/a/g;->a(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v3, v1}, Lorg/b/a/g;->a(ILorg/b/a/i;)V

    instance-of v5, v4, Lorg/b/a/j;

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget v5, v1, Lorg/b/a/i;->j:I

    and-int/2addr v5, v6

    if-nez v5, :cond_5

    invoke-interface {p2, v3}, Lorg/b/a/g;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/b/a/l;->n:Z

    if-nez v4, :cond_5

    :cond_0
    sget-object v4, Lorg/b/a/k;->e:Ljava/lang/Object;

    if-eq v5, v4, :cond_5

    iget-object v4, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    iget-object v6, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-interface {p1, v4, v6}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    invoke-direct {p0, p1, v5, v1}, Lorg/b/a/l;->a(Lorg/d/a/c;Ljava/lang/Object;Lorg/b/a/i;)V

    iget-object v4, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    iget-object v5, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    goto :goto_3

    :cond_1
    check-cast v4, Lorg/b/a/j;

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lorg/b/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v7, v5, v6

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, v1, Lorg/b/a/i;->h:Ljava/lang/String;

    goto :goto_1

    :cond_2
    aget-object v8, v5, v6

    check-cast v8, Ljava/lang/String;

    :goto_1
    iget-object v9, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v5, v1, Lorg/b/a/i;->i:Ljava/lang/String;

    goto :goto_2

    :cond_3
    aget-object v5, v5, v2

    check-cast v5, Ljava/lang/String;

    :goto_2
    invoke-interface {p1, v5, v8}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-boolean v9, p0, Lorg/b/a/l;->m:Z

    if-nez v9, :cond_4

    invoke-interface {p1, v5, v6}, Lorg/d/a/c;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lorg/b/a/l;->i:Ljava/lang/String;

    const-string v10, "type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v10, v6}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_4
    invoke-direct {p0, p1, v4}, Lorg/b/a/l;->b(Lorg/d/a/c;Lorg/b/a/g;)V

    invoke-interface {p1, v5, v8}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {p1, p2}, Lorg/b/a/l;->d(Lorg/d/a/c;Lorg/b/a/g;)V

    return-void
.end method

.method private static d(Lorg/d/a/c;Lorg/b/a/g;)V
    .locals 1

    instance-of v0, p1, Lorg/b/a/f;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/b/a/f;

    invoke-interface {p1}, Lorg/b/a/f;->a_()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/b/a/m;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/d/a/c;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/b/a/l;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/b/a/l;->a:Ljava/lang/Object;

    instance-of v0, v0, Lorg/b/c;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/b/a/l;->a:Ljava/lang/Object;

    check-cast v0, Lorg/b/a/g;

    invoke-interface {v0}, Lorg/b/a/g;->b()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/b/a/g;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-interface {v0, v2}, Lorg/b/a/g;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-interface {v0}, Lorg/b/a/g;->b()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Lorg/b/a/g;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    iget-object v0, p0, Lorg/b/a/l;->a:Ljava/lang/Object;

    check-cast v0, Lorg/b/c;

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/b/a/h;)V
    .locals 4

    iget-object v0, p0, Lorg/b/a/l;->q:Ljava/util/Hashtable;

    new-instance v1, Lorg/b/a/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p4, :cond_0

    move-object v3, p3

    goto :goto_0

    :cond_0
    move-object v3, p4

    :goto_0
    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/b/a/l;->r:Ljava/util/Hashtable;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object v2, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    invoke-virtual {v0, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lorg/d/a/a;)V
    .locals 9

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/a/l;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/d/a/a;->l()I

    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/b/a/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Fault"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/b/a/l;->f:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/b/c;

    iget v1, p0, Lorg/b/a/l;->f:I

    invoke-direct {v0, v1}, Lorg/b/c;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/b/d;

    iget v1, p0, Lorg/b/a/l;->f:I

    invoke-direct {v0, v1}, Lorg/b/d;-><init>(I)V

    :goto_0
    invoke-virtual {v0, p1}, Lorg/b/c;->a(Lorg/d/a/a;)V

    iput-object v0, p0, Lorg/b/a/l;->a:Ljava/lang/Object;

    return-void

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/d/a/a;->i()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string v2, "root"

    invoke-interface {p1, v0, v2}, Lorg/d/a/a;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-interface {p1}, Lorg/d/a/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/d/a/a;->f()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/b/a/i;->g:Lorg/b/a/i;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/b/a/l;->a(Lorg/d/a/a;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/b/a/i;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/b/a/l;->a:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_2
    iput-object v2, p0, Lorg/b/a/l;->a:Ljava/lang/Object;

    :cond_3
    invoke-interface {p1}, Lorg/d/a/a;->l()I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final b(Lorg/d/a/c;)V
    .locals 7

    iget-object v0, p0, Lorg/b/a/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/b/a/l;->u:Ljava/util/Vector;

    iget-object v0, p0, Lorg/b/a/l;->u:Ljava/util/Vector;

    iget-object v1, p0, Lorg/b/a/l;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/b/a/l;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/b/a/l;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iget-boolean v2, p0, Lorg/b/a/l;->o:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    :goto_0
    const/4 v4, 0x1

    aget-object v5, v0, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v2, v5}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-boolean v2, p0, Lorg/b/a/l;->o:Z

    if-eqz v2, :cond_1

    const-string v2, "xmlns"

    aget-object v5, v0, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v2, v5}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_1
    iget-boolean v2, p0, Lorg/b/a/l;->s:Z

    if-eqz v2, :cond_3

    const-string v2, "id"

    const/4 v5, 0x2

    aget-object v6, v0, v5

    if-nez v6, :cond_2

    const-string v5, "o0"

    goto :goto_1

    :cond_2
    aget-object v5, v0, v5

    check-cast v5, Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v1, v2, v5}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    iget-object v2, p0, Lorg/b/a/l;->h:Ljava/lang/String;

    const-string v5, "root"

    const-string v6, "1"

    invoke-interface {p1, v2, v5, v6}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_3
    iget-object v2, p0, Lorg/b/a/l;->b:Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-direct {p0, p1, v2, v1, v5}, Lorg/b/a/l;->a(Lorg/d/a/c;Ljava/lang/Object;Lorg/b/a/i;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lorg/b/a/l;->o:Z

    if-eqz v1, :cond_4

    const-string v1, ""

    goto :goto_2

    :cond_4
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    :goto_2
    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    :cond_5
    return-void
.end method
