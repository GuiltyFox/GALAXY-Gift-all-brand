.class public Lcom/samsung/privilege/control/WebViewSurvey;
.super Landroid/webkit/WebView;
.source "WebViewSurvey.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/control/WebViewSurvey;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;)V
    .registers 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/privilege/control/WebViewSurvey;->b:Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;

    .line 115
    new-instance v0, Lcom/samsung/privilege/control/WebViewSurvey$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/WebViewSurvey$1;-><init>(Lcom/samsung/privilege/control/WebViewSurvey;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/privilege/control/WebViewSurvey;->b:Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;

    if-eqz v0, :cond_13

    .line 124
    iget-object v0, p0, Lcom/samsung/privilege/control/WebViewSurvey;->b:Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;

    invoke-interface {v0}, Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;->a()V

    .line 126
    :cond_13
    return-void
.end method
