.class public Lcom/samsung/privilege/activity/TermsApacheActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TermsApacheActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Handler;


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/TermsApacheActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/TermsApacheActivity$1;-><init>(Lcom/samsung/privilege/activity/TermsApacheActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    .line 40
    const v0, 0x7f1001e8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 49
    :try_start_9
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 50
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 53
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 56
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2a

    .line 60
    :goto_29
    return-void

    .line 57
    :catch_2a
    move-exception v0

    .line 58
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->a(Ljava/lang/String;)V

    goto :goto_29
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->finish()V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 27
    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->setContentView(I)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/TermsApacheActivity;->b:Landroid/os/Handler;

    .line 31
    invoke-direct {p0}, Lcom/samsung/privilege/activity/TermsApacheActivity;->f()V

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
