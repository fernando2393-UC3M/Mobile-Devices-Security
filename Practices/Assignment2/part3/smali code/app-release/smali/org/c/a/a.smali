.class public final Lorg/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/d/a/a;


# instance fields
.field private A:I

.field private B:[Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:[I

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/Hashtable;

.field private h:I

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:[I

.field private l:Ljava/io/Reader;

.field private m:Ljava/lang/String;

.field private n:[C

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:[C

.field private t:I

.field private u:I

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/c/a/a;->i:[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/c/a/a;->k:[I

    const/16 v1, 0x80

    new-array v2, v1, [C

    iput-object v2, p0, Lorg/c/a/a;->s:[C

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/c/a/a;->D:[I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/16 v1, 0x2000

    :cond_0
    new-array v0, v1, [C

    iput-object v0, p0, Lorg/c/a/a;->n:[C

    return-void
.end method

.method private final a(Z)I
    .locals 12

    const-string v0, ""

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/4 v4, -0x1

    const/16 v5, 0x2d

    const/16 v6, 0x3f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v1, v6, :cond_e

    invoke-direct {p0, v7}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v9, 0x78

    if-eq v1, v9, :cond_0

    invoke-direct {p0, v7}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v9, 0x58

    if-ne v1, v9, :cond_d

    :cond_0
    invoke-direct {p0, v8}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v9, 0x6d

    if-eq v1, v9, :cond_1

    invoke-direct {p0, v8}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v9, 0x4d

    if-ne v1, v9, :cond_d

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v7}, Lorg/c/a/a;->g(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/c/a/a;->f(I)V

    invoke-direct {p0, v8}, Lorg/c/a/a;->g(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/c/a/a;->f(I)V

    :cond_2
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0, v7}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v9, 0x6c

    if-eq v1, v9, :cond_3

    invoke-direct {p0, v7}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v9, 0x4c

    if-ne v1, v9, :cond_d

    :cond_3
    invoke-direct {p0, v8}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v9, 0x20

    if-gt v1, v9, :cond_d

    iget p1, p0, Lorg/c/a/a;->q:I

    if-ne p1, v8, :cond_4

    iget p1, p0, Lorg/c/a/a;->r:I

    const/4 v0, 0x4

    if-le p1, v0, :cond_5

    :cond_4
    const-string p1, "PI must not start with xml"

    invoke-direct {p0, p1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v8}, Lorg/c/a/a;->b(Z)V

    iget p1, p0, Lorg/c/a/a;->A:I

    const/4 v0, 0x2

    if-lez p1, :cond_6

    const-string p1, "version"

    iget-object v1, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    const-string p1, "version expected"

    invoke-direct {p0, p1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v2, p1, v1

    iput-object v2, p0, Lorg/c/a/a;->c:Ljava/lang/String;

    iget v2, p0, Lorg/c/a/a;->A:I

    if-ge v8, v2, :cond_8

    const-string v2, "encoding"

    const/4 v3, 0x6

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object p1, p1, v2

    iput-object p1, p0, Lorg/c/a/a;->m:Ljava/lang/String;

    goto :goto_0

    :cond_8
    move v0, v8

    :goto_0
    iget p1, p0, Lorg/c/a/a;->A:I

    if-ge v0, p1, :cond_b

    const-string p1, "standalone"

    iget-object v2, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v4, v3, 0x2

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/2addr v3, v1

    aget-object p1, p1, v3

    const-string v1, "yes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    iput-object p1, p0, Lorg/c/a/a;->d:Ljava/lang/Boolean;

    goto :goto_2

    :cond_9
    const-string v1, "no"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_a
    const-string v1, "illegal standalone value: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_b
    iget p1, p0, Lorg/c/a/a;->A:I

    if-eq v0, p1, :cond_c

    const-string p1, "illegal xmldecl"

    invoke-direct {p0, p1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_c
    iput-boolean v8, p0, Lorg/c/a/a;->v:Z

    iput v7, p0, Lorg/c/a/a;->t:I

    const/16 p1, 0x3e6

    return p1

    :cond_d
    const/16 v1, 0x8

    move v9, p1

    move p1, v1

    move v10, v6

    goto :goto_3

    :cond_e
    const/16 v0, 0x21

    if-ne v1, v0, :cond_20

    invoke-direct {p0, v7}, Lorg/c/a/a;->g(I)I

    move-result v0

    if-ne v0, v5, :cond_f

    const-string v0, "--"

    move v9, p1

    move p1, v3

    move v10, v5

    goto :goto_3

    :cond_f
    invoke-direct {p0, v7}, Lorg/c/a/a;->g(I)I

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_10

    const/4 p1, 0x5

    const-string v0, "[CDATA["

    const/16 v1, 0x5d

    move v10, v1

    move v9, v8

    goto :goto_3

    :cond_10
    const-string v0, "DOCTYPE"

    move v9, p1

    move p1, v2

    move v10, v4

    :goto_3
    move v1, v7

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v1, v11, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lorg/c/a/a;->a(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    const/16 v0, 0x3e

    if-ne p1, v2, :cond_18

    :cond_12
    :goto_5
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    move-result v1

    if-eq v1, v4, :cond_17

    const/16 v2, 0x27

    if-eq v1, v2, :cond_15

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_14

    if-eq v1, v0, :cond_13

    goto :goto_6

    :cond_13
    if-nez v7, :cond_16

    add-int/lit8 v8, v8, -0x1

    if-eqz v8, :cond_1e

    goto :goto_6

    :cond_14
    if-nez v7, :cond_16

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_15
    xor-int/lit8 v2, v7, 0x1

    move v7, v2

    :cond_16
    :goto_6
    if-eqz v9, :cond_12

    invoke-direct {p0, v1}, Lorg/c/a/a;->f(I)V

    goto :goto_5

    :cond_17
    const-string v0, "Unexpected EOF"

    invoke-direct {p0, v0}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    move v1, v7

    :goto_7
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    move-result v2

    if-ne v2, v4, :cond_19

    const-string p1, "Unexpected EOF"

    :goto_8
    invoke-direct {p0, p1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    return v3

    :cond_19
    if-eqz v9, :cond_1a

    invoke-direct {p0, v2}, Lorg/c/a/a;->f(I)V

    :cond_1a
    if-eq v10, v6, :cond_1b

    if-ne v2, v10, :cond_1f

    :cond_1b
    invoke-direct {p0, v7}, Lorg/c/a/a;->g(I)I

    move-result v11

    if-ne v11, v10, :cond_1f

    invoke-direct {p0, v8}, Lorg/c/a/a;->g(I)I

    move-result v11

    if-eq v11, v0, :cond_1c

    goto :goto_a

    :cond_1c
    if-ne v10, v5, :cond_1d

    if-ne v1, v5, :cond_1d

    iget-boolean v0, p0, Lorg/c/a/a;->f:Z

    if-nez v0, :cond_1d

    const-string v0, "illegal comment delimiter: --->"

    invoke-direct {p0, v0}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_1d
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    if-eqz v9, :cond_1e

    if-eq v10, v6, :cond_1e

    iget v0, p0, Lorg/c/a/a;->t:I

    sub-int/2addr v0, v8

    iput v0, p0, Lorg/c/a/a;->t:I

    :cond_1e
    :goto_9
    return p1

    :cond_1f
    :goto_a
    move v1, v2

    goto :goto_7

    :cond_20
    const-string p1, "illegal: <"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private final a(C)V
    .locals 3

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' actual: \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final a(IZ)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/c/a/a;->g(I)I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    if-eq v1, p1, :cond_5

    const/16 v3, 0x3e

    const/16 v4, 0x20

    if-ne p1, v4, :cond_0

    if-le v1, v4, :cond_5

    if-eq v1, v3, :cond_5

    :cond_0
    const/16 v5, 0x26

    const/4 v6, 0x2

    if-ne v1, v5, :cond_1

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lorg/c/a/a;->q()V

    goto :goto_2

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    iget v5, p0, Lorg/c/a/a;->u:I

    if-ne v5, v6, :cond_2

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    move-result v4

    :goto_1
    invoke-direct {p0, v4}, Lorg/c/a/a;->f(I)V

    :goto_2
    const/16 v4, 0x5d

    if-ne v1, v3, :cond_3

    if-lt v2, v6, :cond_3

    if-eq p1, v4, :cond_3

    const-string v3, "Illegal: ]]>"

    invoke-direct {p0, v3}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_3
    if-ne v1, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    invoke-direct {p0, v0}, Lorg/c/a/a;->g(I)I

    move-result v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static a([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    array-length v0, p0

    if-lt v0, p1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x10

    new-array p1, p1, [Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private final b(Z)V
    .locals 7

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    :cond_0
    invoke-direct {p0}, Lorg/c/a/a;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a;->A:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/c/a/a;->t()V

    invoke-direct {p0, v0}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v2, 0x3e

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    const/16 v4, 0x3f

    if-ne v1, v4, :cond_4

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0, v2}, Lorg/c/a/a;->a(C)V

    return-void

    :cond_2
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_3

    iput-boolean v3, p0, Lorg/c/a/a;->z:Z

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0}, Lorg/c/a/a;->t()V

    invoke-direct {p0, v2}, Lorg/c/a/a;->a(C)V

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    if-nez p1, :cond_4

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    const-string p1, "Unexpected EOF"

    invoke-direct {p0, p1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-direct {p0}, Lorg/c/a/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    const-string p1, "attr name expected"

    invoke-direct {p0, p1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :goto_1
    iget p1, p0, Lorg/c/a/a;->h:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/c/a/a;->h:I

    shl-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lorg/c/a/a;->i:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x4

    invoke-static {v1, v2}, Lorg/c/a/a;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/a;->i:[Ljava/lang/String;

    iget-object v1, p0, Lorg/c/a/a;->i:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x3

    iget-object v3, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    iget v1, p0, Lorg/c/a/a;->h:I

    iget-object v2, p0, Lorg/c/a/a;->k:[I

    array-length v3, v2

    if-lt v1, v3, :cond_6

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    array-length v3, v2

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/c/a/a;->k:[I

    :cond_6
    iget-object v0, p0, Lorg/c/a/a;->k:[I

    iget v1, p0, Lorg/c/a/a;->h:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    aput v2, v0, v1

    iget-boolean v0, p0, Lorg/c/a/a;->e:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/c/a/a;->n()Z

    goto :goto_2

    :cond_7
    const-string v0, ""

    iput-object v0, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/c/a/a;->i:[Ljava/lang/String;

    iget-object v1, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    aput-object v1, v0, p1

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    aput-object v1, v0, p1

    return-void

    :cond_8
    iget v2, p0, Lorg/c/a/a;->A:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/c/a/a;->A:I

    shl-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x4

    invoke-static {v4, v5}, Lorg/c/a/a;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    iget-object v4, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    const-string v6, ""

    aput-object v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    add-int/lit8 v5, v2, 0x1

    aput-object v1, v4, v2

    invoke-direct {p0}, Lorg/c/a/a;->t()V

    invoke-direct {p0, v0}, Lorg/c/a/a;->g(I)I

    move-result v2

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_a

    iget-boolean v2, p0, Lorg/c/a/a;->f:Z

    if-nez v2, :cond_9

    const-string v2, "Attr.value missing f. "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    aput-object v1, v2, v5

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v4}, Lorg/c/a/a;->a(C)V

    invoke-direct {p0}, Lorg/c/a/a;->t()V

    invoke-direct {p0, v0}, Lorg/c/a/a;->g(I)I

    move-result v1

    const/16 v2, 0x27

    const/16 v4, 0x20

    if-eq v1, v2, :cond_c

    const/16 v2, 0x22

    if-eq v1, v2, :cond_c

    iget-boolean v1, p0, Lorg/c/a/a;->f:Z

    if-nez v1, :cond_b

    const-string v1, "attr value delimiter missing!"

    invoke-direct {p0, v1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_b
    move v1, v4

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    :goto_3
    iget v2, p0, Lorg/c/a/a;->t:I

    invoke-direct {p0, v1, v3}, Lorg/c/a/a;->a(IZ)V

    iget-object v3, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/c/a/a;->e(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    iput v2, p0, Lorg/c/a/a;->t:I

    if-eq v1, v4, :cond_1

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    goto/16 :goto_0
.end method

.method private final c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/c/a/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "ERR: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/c/a/a;->C:Ljava/lang/String;

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/c/a/a;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/d/a/b;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/d/a/b;-><init>(Ljava/lang/String;Lorg/d/a/a;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final e(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/c/a/a;->s:[C

    iget v2, p0, Lorg/c/a/a;->t:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private final f(I)V
    .locals 4

    iget-boolean v0, p0, Lorg/c/a/a;->v:Z

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/c/a/a;->v:Z

    iget v0, p0, Lorg/c/a/a;->t:I

    iget-object v2, p0, Lorg/c/a/a;->s:[C

    array-length v3, v2

    if-ne v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x4

    div-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [C

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/c/a/a;->s:[C

    :cond_1
    iget-object v0, p0, Lorg/c/a/a;->s:[C

    iget v1, p0, Lorg/c/a/a;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a;->t:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method private final g(I)I
    .locals 5

    :goto_0
    iget v0, p0, Lorg/c/a/a;->E:I

    if-lt p1, v0, :cond_6

    iget-object v0, p0, Lorg/c/a/a;->n:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    iget-object v0, p0, Lorg/c/a/a;->l:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_2

    :cond_0
    iget v1, p0, Lorg/c/a/a;->o:I

    iget v4, p0, Lorg/c/a/a;->p:I

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/c/a/a;->o:I

    aget-char v0, v0, v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/c/a/a;->l:Ljava/io/Reader;

    array-length v4, v0

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    iput v0, p0, Lorg/c/a/a;->p:I

    iget v0, p0, Lorg/c/a/a;->p:I

    if-gtz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/c/a/a;->n:[C

    aget-char v0, v0, v2

    :goto_1
    iput v3, p0, Lorg/c/a/a;->o:I

    :goto_2
    const/16 v1, 0xd

    const/16 v4, 0xa

    if-ne v0, v1, :cond_3

    iput-boolean v3, p0, Lorg/c/a/a;->F:Z

    iget-object v0, p0, Lorg/c/a/a;->D:[I

    iget v1, p0, Lorg/c/a/a;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/c/a/a;->E:I

    aput v4, v0, v1

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    iget-boolean v0, p0, Lorg/c/a/a;->F:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/c/a/a;->D:[I

    iget v1, p0, Lorg/c/a/a;->E:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/c/a/a;->E:I

    aput v4, v0, v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/c/a/a;->D:[I

    iget v3, p0, Lorg/c/a/a;->E:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/c/a/a;->E:I

    aput v0, v1, v3

    :cond_5
    :goto_3
    iput-boolean v2, p0, Lorg/c/a/a;->F:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/c/a/a;->D:[I

    aget p1, v0, p1

    return p1
.end method

.method private final n()Z
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/c/a/a;->A:I

    shl-int/lit8 v4, v3, 0x2

    const/4 v5, -0x1

    const/16 v6, 0x3a

    const/4 v7, 0x1

    if-ge v1, v4, :cond_4

    iget-object v3, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v5

    goto :goto_1

    :cond_0
    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    const-string v5, "xmlns"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v7

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/c/a/a;->k:[I

    iget v5, p0, Lorg/c/a/a;->h:I

    aget v6, v3, v5

    add-int/lit8 v8, v6, 0x1

    aput v8, v3, v5

    shl-int/lit8 v3, v6, 0x1

    iget-object v5, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    invoke-static {v5, v6}, Lorg/c/a/a;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    iget-object v5, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    aput-object v4, v5, v3

    add-int/2addr v3, v7

    iget-object v6, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v8, v1, 0x3

    aget-object v9, v6, v8

    aput-object v9, v5, v3

    if-eqz v4, :cond_2

    aget-object v3, v6, v8

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "illegal empty namespace"

    invoke-direct {p0, v3}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x4

    iget v5, p0, Lorg/c/a/a;->A:I

    sub-int/2addr v5, v7

    iput v5, p0, Lorg/c/a/a;->A:I

    shl-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v1

    invoke-static {v3, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_a

    shl-int/lit8 v1, v3, 0x2

    add-int/lit8 v1, v1, -0x4

    :goto_3
    if-ltz v1, :cond_a

    iget-object v3, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-nez v8, :cond_6

    iget-boolean v9, p0, Lorg/c/a/a;->f:Z

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal attribute name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    if-eq v8, v5, :cond_9

    invoke-virtual {v3, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v9}, Lorg/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    iget-boolean v10, p0, Lorg/c/a/a;->f:Z

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Undefined Prefix: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    iget-object v10, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    aput-object v8, v10, v1

    add-int/lit8 v8, v1, 0x1

    aput-object v9, v10, v8

    aput-object v3, v10, v4

    :cond_9
    add-int/lit8 v1, v1, -0x4

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "illegal tag name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_b
    if-eq v1, v5, :cond_c

    iget-object v3, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    iget-object v0, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    iget-object v0, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "undefined prefix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_d
    const-string v0, ""

    iput-object v0, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    :cond_e
    return v2
.end method

.method private final o()V
    .locals 5

    iget-object v0, p0, Lorg/c/a/a;->l:Ljava/io/Reader;

    if-nez v0, :cond_0

    const-string v0, "No Input specified"

    invoke-direct {p0, v0}, Lorg/c/a/a;->d(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/c/a/a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a;->h:I

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/a;->A:I

    iget-boolean v0, p0, Lorg/c/a/a;->z:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lorg/c/a/a;->z:Z

    iput v1, p0, Lorg/c/a/a;->u:I

    return-void

    :cond_2
    iget-object v0, p0, Lorg/c/a/a;->C:Ljava/lang/String;

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    :goto_0
    iget-object v0, p0, Lorg/c/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lorg/c/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/c/a/a;->f(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v4, p0, Lorg/c/a/a;->C:Ljava/lang/String;

    iput v3, p0, Lorg/c/a/a;->u:I

    return-void

    :cond_4
    iput-object v4, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    iput-object v4, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    iput-object v4, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    invoke-direct {p0}, Lorg/c/a/a;->p()I

    move-result v0

    iput v0, p0, Lorg/c/a/a;->u:I

    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v4, 0x6

    if-eq v0, v4, :cond_9

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lorg/c/a/a;->H:Z

    invoke-direct {p0, v0}, Lorg/c/a/a;->a(Z)I

    move-result v0

    iput v0, p0, Lorg/c/a/a;->u:I

    iget v0, p0, Lorg/c/a/a;->u:I

    const/16 v2, 0x3e6

    if-eq v0, v2, :cond_1

    return-void

    :pswitch_0
    const/16 v0, 0x3c

    iget-boolean v1, p0, Lorg/c/a/a;->H:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/c/a/a;->a(IZ)V

    iget v0, p0, Lorg/c/a/a;->h:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/c/a/a;->v:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iput v0, p0, Lorg/c/a/a;->u:I

    :cond_5
    return-void

    :pswitch_1
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0}, Lorg/c/a/a;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    invoke-direct {p0}, Lorg/c/a/a;->t()V

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/c/a/a;->a(C)V

    iget v0, p0, Lorg/c/a/a;->h:I

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x2

    if-nez v0, :cond_6

    const-string v0, "element stack empty"

    invoke-direct {p0, v0}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    iput v3, p0, Lorg/c/a/a;->u:I

    return-void

    :cond_6
    iget-boolean v0, p0, Lorg/c/a/a;->f:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/a;->i:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "expected: /"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/c/a/a;->i:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " read: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lorg/c/a/a;->i:[Ljava/lang/String;

    aget-object v2, v0, v1

    iput-object v2, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    :cond_8
    return-void

    :pswitch_2
    invoke-direct {p0, v2}, Lorg/c/a/a;->b(Z)V

    :pswitch_3
    return-void

    :cond_9
    invoke-direct {p0}, Lorg/c/a/a;->q()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final p()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/c/a/a;->g(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x26

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/c/a/a;->g(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    const/16 v0, 0x3e7

    return v0

    :cond_3
    const/4 v0, 0x6

    return v0

    :cond_4
    return v2
.end method

.method private final q()V
    .locals 6

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/c/a/a;->f(I)V

    iget v0, p0, Lorg/c/a/a;->t:I

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/c/a/a;->g(I)I

    move-result v2

    const/16 v3, 0x3b

    const/16 v4, 0x23

    const/4 v5, 0x1

    if-ne v2, v3, :cond_6

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    invoke-direct {p0, v0}, Lorg/c/a/a;->e(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/c/a/a;->t:I

    iget-boolean v0, p0, Lorg/c/a/a;->H:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    iput-object v2, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Lorg/c/a/a;->f(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/c/a/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    iput-boolean v5, p0, Lorg/c/a/a;->G:Z

    iget-boolean v3, p0, Lorg/c/a/a;->G:Z

    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lorg/c/a/a;->H:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unresolved: &"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/c/a/a;->f(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    const/16 v1, 0x80

    if-ge v2, v1, :cond_b

    const/16 v1, 0x30

    if-lt v2, v1, :cond_7

    const/16 v1, 0x39

    if-le v2, v1, :cond_b

    :cond_7
    const/16 v1, 0x61

    if-lt v2, v1, :cond_8

    const/16 v1, 0x7a

    if-le v2, v1, :cond_b

    :cond_8
    const/16 v1, 0x41

    if-lt v2, v1, :cond_9

    const/16 v1, 0x5a

    if-le v2, v1, :cond_b

    :cond_9
    const/16 v1, 0x5f

    if-eq v2, v1, :cond_b

    const/16 v1, 0x2d

    if-eq v2, v1, :cond_b

    if-eq v2, v4, :cond_b

    iget-boolean v1, p0, Lorg/c/a/a;->f:Z

    if-nez v1, :cond_a

    const-string v1, "unterminated entity ref"

    invoke-direct {p0, v1}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "broken entitiy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v5

    invoke-direct {p0, v0}, Lorg/c/a/a;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/c/a/a;->f(I)V

    goto/16 :goto_0
.end method

.method private final r()I
    .locals 5

    iget v0, p0, Lorg/c/a/a;->E:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/c/a/a;->g(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a;->D:[I

    aget v3, v0, v1

    aget v4, v0, v2

    aput v4, v0, v1

    move v0, v3

    :goto_0
    iget v1, p0, Lorg/c/a/a;->E:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/c/a/a;->E:I

    iget v1, p0, Lorg/c/a/a;->r:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/c/a/a;->r:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v1, p0, Lorg/c/a/a;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/c/a/a;->q:I

    iput v2, p0, Lorg/c/a/a;->r:I

    :cond_1
    return v0
.end method

.method private final s()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lorg/c/a/a;->t:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/c/a/a;->g(I)I

    move-result v2

    const/16 v3, 0x3a

    const/16 v4, 0x5a

    const/16 v5, 0x5f

    const/16 v6, 0x7a

    const/16 v7, 0x41

    const/16 v8, 0x61

    if-lt v2, v8, :cond_0

    if-le v2, v6, :cond_2

    :cond_0
    if-lt v2, v7, :cond_1

    if-le v2, v4, :cond_2

    :cond_1
    if-eq v2, v5, :cond_2

    if-eq v2, v3, :cond_2

    const/16 v9, 0xc0

    if-ge v2, v9, :cond_2

    iget-boolean v2, p0, Lorg/c/a/a;->f:Z

    if-nez v2, :cond_2

    const-string v2, "name expected"

    invoke-direct {p0, v2}, Lorg/c/a/a;->c(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lorg/c/a/a;->r()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/c/a/a;->f(I)V

    invoke-direct {p0, v1}, Lorg/c/a/a;->g(I)I

    move-result v2

    if-lt v2, v8, :cond_3

    if-le v2, v6, :cond_2

    :cond_3
    if-lt v2, v7, :cond_4

    if-le v2, v4, :cond_2

    :cond_4
    const/16 v9, 0x30

    if-lt v2, v9, :cond_5

    const/16 v9, 0x39

    if-le v2, v9, :cond_2

    :cond_5
    if-eq v2, v5, :cond_2

    const/16 v9, 0x2d

    if-eq v2, v9, :cond_2

    if-eq v2, v3, :cond_2

    const/16 v9, 0x2e

    if-eq v2, v9, :cond_2

    const/16 v9, 0xb7

    if-ge v2, v9, :cond_2

    invoke-direct {p0, v0}, Lorg/c/a/a;->e(I)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lorg/c/a/a;->t:I

    return-object v1
.end method

.method private final t()V
    .locals 2

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/c/a/a;->g(I)I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/c/a/a;->r()I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/c/a/a;->h:I

    return v0
.end method

.method public final a(I)I
    .locals 1

    iget v0, p0, Lorg/c/a/a;->h:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a;->k:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_0
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    :cond_1
    iget v0, p0, Lorg/c/a/a;->h:I

    invoke-virtual {p0, v0}, Lorg/c/a/a;->a(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_4

    if-nez p1, :cond_2

    iget-object v1, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-object p1, v1, v0

    return-object p1

    :cond_2
    iget-object v1, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/c/a/a;->u:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/c/a/a;->a:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/c/a/a;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a;->o:I

    iput v0, p0, Lorg/c/a/a;->p:I

    if-eqz p1, :cond_f

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez p2, :cond_d

    move v3, v0

    :goto_0
    :try_start_0
    iget v4, p0, Lorg/c/a/a;->p:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v1, :cond_0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget-object v5, p0, Lorg/c/a/a;->n:[C

    iget v6, p0, Lorg/c/a/a;->p:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/c/a/a;->p:I

    int-to-char v4, v4

    aput-char v4, v5, v6

    goto :goto_0

    :cond_0
    iget v4, p0, Lorg/c/a/a;->p:I

    if-ne v4, v5, :cond_d

    const/high16 v4, -0x20000

    if-eq v3, v4, :cond_c

    const/16 v5, 0x3c

    if-eq v3, v5, :cond_b

    const v6, 0xfeff

    if-eq v3, v6, :cond_a

    const v6, 0x3c003f

    const/16 v7, 0x3f

    const/4 v8, 0x2

    if-eq v3, v6, :cond_9

    const/high16 v6, 0x3c000000    # 0.0078125f

    if-eq v3, v6, :cond_8

    const v6, 0x3c003f00

    if-eq v3, v6, :cond_7

    const v5, 0x3c3f786d

    if-eq v3, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    if-eq v5, v1, :cond_3

    iget-object v6, p0, Lorg/c/a/a;->n:[C

    iget v7, p0, Lorg/c/a/a;->p:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lorg/c/a/a;->p:I

    int-to-char v9, v5

    aput-char v9, v6, v7

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/c/a/a;->n:[C

    iget v7, p0, Lorg/c/a/a;->p:I

    invoke-direct {v5, v6, v0, v7}, Ljava/lang/String;-><init>([CII)V

    const-string v6, "encoding"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v1, :cond_3

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x22

    if-eq v7, v9, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x27

    if-eq v7, v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    :goto_2
    move-object v5, p2

    :goto_3
    const/high16 v6, -0x10000

    and-int/2addr v6, v3

    const/high16 v7, -0x1010000

    const/4 v9, 0x3

    if-ne v6, v7, :cond_4

    const-string v3, "UTF-16BE"

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    iget-object v5, p0, Lorg/c/a/a;->n:[C

    aget-char v5, v5, v8

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lorg/c/a/a;->n:[C

    aget-char v6, v6, v9

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v0

    :goto_4
    iput v2, p0, Lorg/c/a/a;->p:I

    goto :goto_7

    :cond_4
    if-ne v6, v4, :cond_5

    const-string v3, "UTF-16LE"

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    iget-object v5, p0, Lorg/c/a/a;->n:[C

    aget-char v5, v5, v9

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lorg/c/a/a;->n:[C

    aget-char v6, v6, v8

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v0

    goto :goto_4

    :cond_5
    and-int/lit16 v3, v3, -0x100

    const v4, -0x10444100

    if-ne v3, v4, :cond_6

    const-string v3, "UTF-8"

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    iget-object v5, p0, Lorg/c/a/a;->n:[C

    aget-char v5, v5, v9

    aput-char v5, v4, v0

    goto :goto_4

    :cond_6
    move-object v3, v5

    goto :goto_7

    :cond_7
    const-string v3, "UTF-16LE"

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    aput-char v5, v4, v0

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    aput-char v7, v4, v2

    :goto_5
    iput v8, p0, Lorg/c/a/a;->p:I

    goto :goto_7

    :cond_8
    const-string v3, "UTF-32LE"

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    aput-char v5, v4, v0

    goto :goto_4

    :cond_9
    const-string v3, "UTF-16BE"

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    aput-char v5, v4, v0

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    aput-char v7, v4, v2

    goto :goto_5

    :cond_a
    const-string v3, "UTF-32BE"

    :goto_6
    iput v0, p0, Lorg/c/a/a;->p:I

    goto :goto_7

    :cond_b
    const-string v3, "UTF-32BE"

    iget-object v4, p0, Lorg/c/a/a;->n:[C

    aput-char v5, v4, v0

    goto :goto_4

    :cond_c
    const-string v3, "UTF-32LE"

    goto :goto_6

    :cond_d
    move-object v3, p2

    :goto_7
    if-nez v3, :cond_e

    const-string v3, "UTF-8"

    :cond_e
    iget v4, p0, Lorg/c/a/a;->p:I

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/c/a/a;->l:Ljava/io/Reader;

    iput v2, p0, Lorg/c/a/a;->q:I

    iput v0, p0, Lorg/c/a/a;->r:I

    iput v0, p0, Lorg/c/a/a;->u:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    iput-object p1, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/c/a/a;->z:Z

    iput v1, p0, Lorg/c/a/a;->A:I

    iput-object p1, p0, Lorg/c/a/a;->m:Ljava/lang/String;

    iput-object p1, p0, Lorg/c/a/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lorg/c/a/a;->d:Ljava/lang/Boolean;

    iput v0, p0, Lorg/c/a/a;->o:I

    iput v0, p0, Lorg/c/a/a;->p:I

    iput v0, p0, Lorg/c/a/a;->E:I

    iput v0, p0, Lorg/c/a/a;->h:I

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/c/a/a;->g:Ljava/util/Hashtable;

    iget-object p1, p0, Lorg/c/a/a;->g:Ljava/util/Hashtable;

    const-string v0, "amp"

    const-string v1, "&"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/c/a/a;->g:Ljava/util/Hashtable;

    const-string v0, "apos"

    const-string v1, "\'"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/c/a/a;->g:Ljava/util/Hashtable;

    const-string v0, "gt"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/c/a/a;->g:Ljava/util/Hashtable;

    const-string v0, "lt"

    const-string v1, "<"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/c/a/a;->g:Ljava/util/Hashtable;

    const-string v0, "quot"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/c/a/a;->m:Ljava/lang/String;

    iput v4, p0, Lorg/c/a/a;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/d/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid stream or encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lorg/d/a/b;-><init>(Ljava/lang/String;Lorg/d/a/a;Ljava/lang/Throwable;)V

    throw p2

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/c/a/a;->q:I

    return v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/c/a/a;->e:Z

    return-void

    :cond_0
    const-string v0, "relaxed"

    const-string v2, "http://xmlpull.org/v1/doc/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/c/a/a;->f:Z

    return-void

    :cond_2
    const-string v0, "unsupported feature: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/c/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lorg/c/a/a;->r:I

    return v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a;->j:[Ljava/lang/String;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/c/a/a;->G:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/c/a/a;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/c/a/a;->A:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    shl-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/c/a/a;->d(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lorg/c/a/a;->z:Z

    return v0
.end method

.method public final getAttributeCount()I
    .locals 1

    iget v0, p0, Lorg/c/a/a;->A:I

    return v0
.end method

.method public final getAttributeName(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/c/a/a;->A:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    shl-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final getAttributeValue(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/c/a/a;->A:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    shl-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x3

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/c/a/a;->A:I

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getPositionDescription()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/c/a/a;->u:I

    sget-object v2, Lorg/c/a/a;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/c/a/a;->a:[Ljava/lang/String;

    iget v2, p0, Lorg/c/a/a;->u:I

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "unknown"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/c/a/a;->u:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    if-ne v2, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x7

    if-eq v2, v1, :cond_b

    const/4 v1, 0x4

    if-eq v2, v1, :cond_3

    invoke-virtual {p0}, Lorg/c/a/a;->d()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_3
    iget-boolean v1, p0, Lorg/c/a/a;->v:Z

    if-eqz v1, :cond_4

    const-string v1, "(whitespace)"

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/c/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x10

    if-le v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    :goto_2
    iget-boolean v2, p0, Lorg/c/a/a;->z:Z

    if-eqz v2, :cond_6

    const-string v2, "(empty) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/c/a/a;->u:I

    if-ne v2, v4, :cond_7

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v2, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/c/a/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/c/a/a;->x:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v2, p0, Lorg/c/a/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/c/a/a;->A:I

    shl-int/2addr v2, v5

    :goto_3
    if-ge v3, v2, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/c/a/a;->B:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    :cond_a
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/c/a/a;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/c/a/a;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/c/a/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_c

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/c/a/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lorg/c/a/a;->l:Ljava/io/Reader;

    if-eqz v1, :cond_d

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/c/a/a;->l:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "CDATA"

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lorg/c/a/a;->u:I

    return v0
.end method

.method public final j()I
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a;->t:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/c/a/a;->v:Z

    iput-boolean v0, p0, Lorg/c/a/a;->H:Z

    const/16 v0, 0x270f

    :cond_0
    invoke-direct {p0}, Lorg/c/a/a;->o()V

    iget v1, p0, Lorg/c/a/a;->u:I

    if-ge v1, v0, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/c/a/a;->p()I

    move-result v2

    if-ge v2, v1, :cond_0

    :cond_2
    iput v0, p0, Lorg/c/a/a;->u:I

    iget v0, p0, Lorg/c/a/a;->u:I

    if-le v0, v1, :cond_3

    iput v1, p0, Lorg/c/a/a;->u:I

    :cond_3
    iget v0, p0, Lorg/c/a/a;->u:I

    return v0
.end method

.method public final k()I
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a;->v:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/c/a/a;->t:I

    iput-boolean v0, p0, Lorg/c/a/a;->H:Z

    invoke-direct {p0}, Lorg/c/a/a;->o()V

    iget v0, p0, Lorg/c/a/a;->u:I

    return v0
.end method

.method public final l()I
    .locals 2

    invoke-virtual {p0}, Lorg/c/a/a;->j()I

    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/c/a/a;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/a;->j()I

    :cond_0
    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lorg/c/a/a;->d(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lorg/c/a/a;->u:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "precondition: START_TAG"

    invoke-direct {p0, v0}, Lorg/c/a/a;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a;->j()I

    iget v0, p0, Lorg/c/a/a;->u:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/c/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/a;->j()I

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget v1, p0, Lorg/c/a/a;->u:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lorg/c/a/a;->d(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
