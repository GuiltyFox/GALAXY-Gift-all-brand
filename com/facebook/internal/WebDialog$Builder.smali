.class public Lcom/facebook/internal/WebDialog$Builder;
.super Ljava/lang/Object;
.source "WebDialog.java"


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    .line 551
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 552
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    if-nez v0, :cond_1a

    .line 553
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_1e

    .line 555
    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    .line 562
    :cond_1a
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/WebDialog$Builder;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 563
    return-void

    .line 557
    :cond_1e
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    .line 575
    if-nez p2, :cond_e

    .line 576
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 578
    :cond_e
    const-string/jumbo v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    .line 581
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/internal/WebDialog$Builder;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 582
    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 648
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    .line 649
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$Builder;->action:Ljava/lang/String;

    .line 650
    if-eqz p3, :cond_9

    .line 651
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    .line 655
    :goto_8
    return-void

    .line 653
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    goto :goto_8
.end method


# virtual methods
.method public build()Lcom/facebook/internal/WebDialog;
    .registers 7

    .prologue
    .line 613
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_30

    .line 614
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 616
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "access_token"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 619
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_20
    new-instance v0, Lcom/facebook/internal/WebDialog;

    iget-object v1, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    iget-object v5, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)V

    return-object v0

    .line 621
    :cond_30
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getListener()Lcom/facebook/internal/WebDialog$OnCompleteListener;
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTheme()I
    .registers 2

    .prologue
    .line 636
    iget v0, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog$Builder;
    .registers 2

    .prologue
    .line 602
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 603
    return-object p0
.end method

.method public setTheme(I)Lcom/facebook/internal/WebDialog$Builder;
    .registers 2

    .prologue
    .line 591
    iput p1, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    .line 592
    return-object p0
.end method
