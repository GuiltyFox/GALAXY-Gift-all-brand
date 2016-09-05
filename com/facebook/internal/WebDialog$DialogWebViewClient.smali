.class Lcom/facebook/internal/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .registers 2

    .prologue
    .line 429
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/WebDialog;Lcom/facebook/internal/WebDialog$1;)V
    .registers 3

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/facebook/internal/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/internal/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->isDetached:Z
    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$200(Lcom/facebook/internal/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 519
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 525
    :cond_15
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$400(Lcom/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 526
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$500(Lcom/facebook/internal/WebDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$600(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    const/4 v1, 0x1

    # setter for: Lcom/facebook/internal/WebDialog;->isPageFinished:Z
    invoke-static {v0, v1}, Lcom/facebook/internal/WebDialog;->access$702(Lcom/facebook/internal/WebDialog;Z)Z

    .line 529
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    .line 508
    const-string/jumbo v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 510
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->isDetached:Z
    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$200(Lcom/facebook/internal/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 511
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 513
    :cond_2e
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 492
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 499
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 501
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 502
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 504
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 432
    const-string/jumbo v1, "FacebookSDK.WebDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Redirect URL: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/WebDialog;->access$100(Lcom/facebook/internal/WebDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 434
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0, p2}, Lcom/facebook/internal/WebDialog;->parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 436
    const-string/jumbo v0, "error"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    if-nez v0, :cond_3f

    .line 438
    const-string/jumbo v0, "error_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    :cond_3f
    const-string/jumbo v1, "error_msg"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    if-nez v1, :cond_4f

    .line 443
    const-string/jumbo v1, "error_message"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    :cond_4f
    if-nez v1, :cond_58

    .line 446
    const-string/jumbo v1, "error_description"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    :cond_58
    const-string/jumbo v2, "error_code"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e7

    .line 452
    :try_start_65
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_68} :catch_7e

    move-result v2

    .line 458
    :goto_69
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 459
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    if-ne v2, v3, :cond_81

    .line 460
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0, v5}, Lcom/facebook/internal/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    :goto_7c
    move v0, v4

    .line 483
    :cond_7d
    :goto_7d
    return v0

    .line 453
    :catch_7e
    move-exception v2

    move v2, v3

    .line 454
    goto :goto_69

    .line 461
    :cond_81
    if-eqz v0, :cond_9b

    const-string/jumbo v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    const-string/jumbo v3, "OAuthAccessDeniedException"

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 463
    :cond_95
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->cancel()V

    goto :goto_7c

    .line 464
    :cond_9b
    const/16 v3, 0x1069

    if-ne v2, v3, :cond_a5

    .line 465
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->cancel()V

    goto :goto_7c

    .line 467
    :cond_a5
    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    goto :goto_7c

    .line 471
    :cond_b5
    const-string/jumbo v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 472
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->cancel()V

    move v0, v4

    .line 473
    goto :goto_7d

    .line 474
    :cond_c5
    const-string/jumbo v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 479
    :try_start_ce
    iget-object v1, p0, Lcom/facebook/internal/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v1}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    .line 480
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 479
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ce .. :try_end_e3} :catch_e5

    move v0, v4

    .line 481
    goto :goto_7d

    .line 482
    :catch_e5
    move-exception v1

    goto :goto_7d

    :cond_e7
    move v2, v3

    goto :goto_69
.end method
