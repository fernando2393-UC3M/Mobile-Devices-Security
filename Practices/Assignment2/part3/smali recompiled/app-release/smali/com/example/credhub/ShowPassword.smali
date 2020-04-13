.class public Lcom/example/credhub/ShowPassword;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field finalDes:Ljava/lang/String;

.field finalPass:Ljava/lang/String;

.field finalUsr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/example/credhub/ShowPassword;->finalPass:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/example/credhub/ShowPassword;->finalUsr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/example/credhub/ShowPassword;->finalDes:Ljava/lang/String;

    return-void
.end method

.method private setButtons()V
    .locals 5

    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/example/credhub/ShowPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/example/credhub/ShowPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/example/credhub/ShowPassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/example/credhub/ShowPassword$1;

    invoke-direct {v3, p0}, Lcom/example/credhub/ShowPassword$1;-><init>(Lcom/example/credhub/ShowPassword;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/example/credhub/ShowPassword;->finalDes:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/example/credhub/ShowPassword;->finalUsr:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/example/credhub/ShowPassword;->finalPass:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Lcom/example/credhub/ExportListener;

    invoke-direct {v3, p0, v0}, Lcom/example/credhub/ExportListener;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/example/credhub/ShowPassword$2;

    invoke-direct {v0, p0}, Lcom/example/credhub/ShowPassword$2;-><init>(Lcom/example/credhub/ShowPassword;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001f

    invoke-virtual {p0, p1}, Lcom/example/credhub/ShowPassword;->setContentView(I)V

    invoke-virtual {p0}, Lcom/example/credhub/ShowPassword;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "des"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/credhub/ShowPassword;->finalDes:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/example/credhub/ShowPassword;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "usr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/credhub/ShowPassword;->finalUsr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/example/credhub/ShowPassword;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pass"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/credhub/ShowPassword;->finalPass:Ljava/lang/String;

    const p1, 0x7f080060

    invoke-virtual {p0, p1}, Lcom/example/credhub/ShowPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/example/credhub/ShowPassword;->finalDes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080010

    invoke-virtual {p0, p1}, Lcom/example/credhub/ShowPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/example/credhub/ShowPassword;->finalUsr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f08000a

    invoke-virtual {p0, p1}, Lcom/example/credhub/ShowPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "******"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/example/credhub/ShowPassword;->setButtons()V

    return-void
.end method
