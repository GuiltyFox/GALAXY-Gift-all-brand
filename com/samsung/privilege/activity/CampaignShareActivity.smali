.class public Lcom/samsung/privilege/activity/CampaignShareActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private doPosting:Z

.field private gDialog:Landroid/app/ProgressDialog;

.field private gHandler:Landroid/os/Handler;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private paramCampaign:Lcom/samsung/privilege/bean/CampaignView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 36
    const-string v0, "CampaignShareActivity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->LOGCAT:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->doPosting:Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignShareActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignShareActivity;Z)V
    .registers 2

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->doPosting:Z

    return-void
.end method

.method private initialLayout()V
    .registers 16

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 179
    .local v9, "font":Landroid/graphics/Typeface;
    const v0, 0x7f440007

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 180
    .local v14, "tvShareHeader":Landroid/widget/TextView;
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    const v0, 0x7f44000e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 183
    .local v10, "tvAgency":Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    const v0, 0x7f44000f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 186
    .local v11, "tvCampaignName":Landroid/widget/TextView;
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    const v0, 0x7f440011

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 189
    .local v12, "tvDescription":Landroid/widget/TextView;
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    const v0, 0x7f440014

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 192
    .local v13, "tvShare":Landroid/widget/TextView;
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v0, :cond_65

    .line 195
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v0, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v0, v0, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v0, v0, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_65
    const v0, 0x7f440009

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 201
    .local v2, "imgProfile":Landroid/widget/ImageView;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://graph.facebook.com/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/picture?width=200&height=200"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "imageUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v3, 0x0

    const v4, 0x7f0203a7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 204
    const v0, 0x7f44000d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 205
    .local v5, "imgCampaignSmart":Landroid/widget/ImageView;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/agency/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/picture"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "img_campaign_agency":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v6, 0x0

    const v7, 0x7f0203a7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 208
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 174
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    const-string v0, "CampaignShareActivity"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 158
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 160
    :cond_19
    return-void
.end method


# virtual methods
.method public doShareCampaign(Landroid/view/View;)V
    .registers 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v12, 0x96

    const/4 v11, 0x1

    .line 212
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->doPosting:Z

    if-eqz v7, :cond_f

    .line 213
    const-string v7, "CampaignShareActivity"

    const-string v8, "if (doPosting == true) {"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_e
    return-void

    .line 215
    :cond_f
    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->doPosting:Z

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v4, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    const v7, 0x7f44000b

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 220
    .local v1, "etTextShare":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "stringComment":Ljava/lang/String;
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "token"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "access_token"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "message"

    invoke-direct {v7, v8, v5}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "picture"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "https://buzzebees.blob.core.windows.net/campaigns/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v10, v10, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "link"

    const-string v9, "http://play.google.com/store/apps/details?id=com.samsung.privilege"

    invoke-direct {v7, v8, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "name"

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v9, v9, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v12, :cond_10a

    .line 231
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "detail":Ljava/lang/String;
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "description"

    invoke-direct {v7, v8, v0}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v0    # "detail":Ljava/lang/String;
    :goto_ad
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "caption"

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v9, v9, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "me/feed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "url":Ljava/lang/String;
    const-string v7, ""

    const v8, 0x7f09018d

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 244
    :try_start_df
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gDialog:Landroid/app/ProgressDialog;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 245
    .local v3, "mMessageView":Landroid/widget/TextView;
    if-eqz v3, :cond_ff

    .line 246
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 247
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ff} :catch_119

    .line 253
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "mMessageView":Landroid/widget/TextView;
    :cond_ff
    :goto_ff
    new-instance v7, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/CampaignShareActivity$ShareCampaignListener;-><init>(Lcom/samsung/privilege/activity/CampaignShareActivity;)V

    const/4 v8, 0x0

    invoke-static {v6, v4, v7, v8}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 234
    .end local v6    # "url":Ljava/lang/String;
    :cond_10a
    new-instance v7, Lcom/samsung/privilege/bean/InputItem;

    const-string v8, "description"

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v9, v9, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    .line 249
    .restart local v6    # "url":Ljava/lang/String;
    :catch_119
    move-exception v7

    goto :goto_ff
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-eqz p1, :cond_96

    .line 52
    const-string v6, "CampaignShareActivity"

    const-string v7, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_c
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignShareActivity;->requestWindowFeature(I)Z

    .line 57
    const v6, 0x7f0300b6

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignShareActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 60
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gHandler:Landroid/os/Handler;

    .line 63
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 66
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_gift"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 68
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gScreenHeight:I

    .line 71
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gScreenWidth:I

    .line 73
    iget v5, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gScreenWidth:I

    .line 74
    .local v5, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gScreenHeight:I

    .line 76
    .local v2, "height":I
    if-le v2, v5, :cond_9f

    .end local v2    # "height":I
    :goto_66
    div-int/lit8 v3, v2, 0x2

    .line 77
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 78
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v7, 0x7f0203a7

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 79
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 80
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 83
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->initialParam()V

    .line 84
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->initialLayout()V

    .line 86
    if-eqz p1, :cond_95

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignShareActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 91
    :cond_95
    return-void

    .line 54
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "longest":I
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "width":I
    :cond_96
    const-string v6, "CampaignShareActivity"

    const-string v7, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "width":I
    :cond_9f
    move v2, v5

    .line 76
    goto :goto_66
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 133
    const-string v0, "CampaignShareActivity"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 135
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 112
    const-string v0, "CampaignShareActivity"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 115
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 116
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 127
    const-string v0, "CampaignShareActivity"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "CampaignShareActivity"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 102
    const-string v0, "CampaignShareActivity"

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "CampaignShareActivity"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 145
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 96
    const-string v0, "CampaignShareActivity"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 121
    const-string v0, "CampaignShareActivity"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignShareActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignShareActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignShareActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignShareActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method
