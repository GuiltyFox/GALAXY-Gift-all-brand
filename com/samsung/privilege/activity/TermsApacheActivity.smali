.class public Lcom/samsung/privilege/activity/TermsApacheActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TermsApacheActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 17
    const-class v0, Lcom/samsung/privilege/activity/TermsApacheActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initialLayout()V
    .registers 9

    .prologue
    .line 40
    const v5, 0x7f1001cd

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/TermsApacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 49
    .local v4, "webView1":Landroid/webkit/WebView;
    :try_start_9
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 50
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f080001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 52
    .local v2, "in_s":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 53
    .local v0, "b":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 56
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v6, "text/html"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2a

    .line 60
    .end local v0    # "b":[B
    .end local v2    # "in_s":Ljava/io/InputStream;
    .end local v3    # "res":Landroid/content/res/Resources;
    :goto_29
    return-void

    .line 57
    :catch_2a
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const v5, 0x7f090069

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/privilege/activity/TermsApacheActivity;->showToast(Ljava/lang/String;)V

    goto :goto_29
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/TermsApacheActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/TermsApacheActivity$1;-><init>(Lcom/samsung/privilege/activity/TermsApacheActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->finish()V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 27
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->setContentView(I)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->gHandler:Landroid/os/Handler;

    .line 31
    invoke-direct {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->initialLayout()V

    .line 32
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 37
    return-void
.end method
