.class public Lcom/samsung/privilege/activity/AddMoneyQRActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AddMoneyQRActivity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

.field private j:Lcom/journeyapps/barcodescanner/BarcodeCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->b:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->c:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->d:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->e:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->f:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->g:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/samsung/privilege/activity/AddMoneyQRActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyQRActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->j:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/AddMoneyQRActivity;)Lcom/journeyapps/barcodescanner/CompoundBarcodeView;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->i:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "issuer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cardId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->d:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->e:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "icon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->g:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->finish()V

    .line 105
    return-void
.end method

.method public doCancel(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->finish()V

    .line 101
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 42
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->setContentView(I)V

    .line 43
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->setTheme(I)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->h:Landroid/os/Handler;

    .line 47
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->f()V

    .line 49
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->i:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    .line 50
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->i:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->j:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 53
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->i:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a()V

    .line 64
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 65
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->i:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b()V

    .line 58
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 59
    return-void
.end method
