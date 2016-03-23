.class public Lcom/bzbs/lib/survey/util/fb/FbDialog;
.super Landroid/app/Dialog;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;
    }
.end annotation


# static fields
.field static final DIMENSIONS_DIFF_LANDSCAPE:[F

.field static final DIMENSIONS_DIFF_PORTRAIT:[F

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FB_BLUE:I = -0x927b4c

.field static final FB_ICON:Ljava/lang/String; = "icon.png"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams;

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/FrameLayout;

.field private mCrossImage:Landroid/widget/ImageView;

.field private mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 43
    new-array v0, v2, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 44
    new-array v0, v2, [F

    fill-array-data v0, :array_20

    sput-object v0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 43
    :array_18
    .array-data 4
        0x41a00000
        0x42700000
    .end array-data

    .line 44
    :array_20
    .array-data 4
        0x42200000
        0x42700000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    .prologue
    .line 61
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 62
    iput-object p2, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mUrl:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/fb/FbDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/fb/FbDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/fb/FbDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/fb/FbDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/fb/FbDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mCrossImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createCrossImage()V
    .registers 4

    .prologue
    .line 96
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mCrossImage:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mCrossImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/bzbs/lib/survey/util/fb/FbDialog$1;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/util/fb/FbDialog$1;-><init>(Lcom/bzbs/lib/survey/util/fb/FbDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "crossDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mCrossImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    return-void
.end method

.method private setUpWebView(I)V
    .registers 6
    .param p1, "margin"    # I

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    .line 116
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;-><init>(Lcom/bzbs/lib/survey/util/fb/FbDialog;Lcom/bzbs/lib/survey/util/fb/FbDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v2, Lcom/bzbs/lib/survey/util/fb/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 124
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 125
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 70
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 71
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string/jumbo v2, "Loading..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->requestWindowFeature(I)Z

    .line 74
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mContent:Landroid/widget/FrameLayout;

    .line 80
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->createCrossImage()V

    .line 85
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 86
    .local v0, "crossWidth":I
    div-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->setUpWebView(I)V

    .line 91
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mCrossImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog;->mContent:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method
