.class public Lcom/samsung/privilege/activity/FriendsFragment;
.super Landroid/support/v4/app/Fragment;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;,
        Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;,
        Lcom/samsung/privilege/activity/FriendsFragment$SampleDialogListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_friend"

.field private static LOGCAT:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

.field private gContext:Landroid/content/Context;

.field private gFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private gIsHasData:Z

.field private gIsLoading:Z

.field private gListFriend:Landroid/widget/ListView;

.field private gListOffset:I

.field private final gListPerPage:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "friends"

    sput-object v0, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    const-class v0, Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    .line 69
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gListPerPage:I

    .line 70
    iput v1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gListOffset:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsHasData:Z

    .line 278
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsLoading:Z

    .line 51
    return-void
.end method

.method private ProcessJsonFriend(Ljava/lang/String;)V
    .registers 16
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_5d

    .line 344
    :try_start_6
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 346
    .local v8, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_5e

    .line 347
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsHasData:Z

    .line 352
    :goto_14
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_15
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v7, v10, :cond_7c

    .line 383
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 384
    .local v0, "count_item":I
    sget-object v10, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "count_item="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v10, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "gIsHasData="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsHasData:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/samsung/privilege/activity/FriendsFragment$3;

    invoke-direct {v11, p0, v0}, Lcom/samsung/privilege/activity/FriendsFragment$3;-><init>(Lcom/samsung/privilege/activity/FriendsFragment;I)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/samsung/privilege/activity/FriendsFragment$4;

    invoke-direct {v11, p0}, Lcom/samsung/privilege/activity/FriendsFragment$4;-><init>(Lcom/samsung/privilege/activity/FriendsFragment;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    .end local v0    # "count_item":I
    .end local v7    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_5d
    :goto_5d
    return-void

    .line 349
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_5e
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsHasData:Z
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_61} :catch_62

    goto :goto_14

    .line 425
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    :catch_62
    move-exception v1

    .line 426
    .local v1, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "(GetCampaignListener|onComplete|JSONException):"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 354
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v7    # "i":I
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :cond_7c
    :try_start_7c
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 356
    .local v9, "json_inapp":Lorg/json/JSONObject;
    new-instance v2, Lcom/samsung/privilege/bean/Friend;

    invoke-direct {v2, v9}, Lcom/samsung/privilege/bean/Friend;-><init>(Lorg/json/JSONObject;)V

    .line 358
    .local v2, "friend":Lcom/samsung/privilege/bean/Friend;
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_f9

    .line 359
    new-instance v5, Lcom/samsung/privilege/bean/Friend;

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/UserLogin;->GetFacebookName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 360
    .local v5, "friendMe":Lcom/samsung/privilege/bean/Friend;
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-boolean v10, v2, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    if-eqz v10, :cond_ce

    .line 363
    new-instance v4, Lcom/samsung/privilege/bean/Friend;

    const/4 v10, 0x1

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    invoke-direct {v4, v10, v11, v12, v13}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 364
    .local v4, "friendCaptionMyFriend":Lcom/samsung/privilege/bean/Friend;
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v4    # "friendCaptionMyFriend":Lcom/samsung/privilege/bean/Friend;
    .end local v5    # "friendMe":Lcom/samsung/privilege/bean/Friend;
    :cond_c5
    :goto_c5
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v2    # "friend":Lcom/samsung/privilege/bean/Friend;
    .end local v9    # "json_inapp":Lorg/json/JSONObject;
    :goto_ca
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    .line 366
    .restart local v2    # "friend":Lcom/samsung/privilege/bean/Friend;
    .restart local v5    # "friendMe":Lcom/samsung/privilege/bean/Friend;
    .restart local v9    # "json_inapp":Lorg/json/JSONObject;
    :cond_ce
    new-instance v3, Lcom/samsung/privilege/bean/Friend;

    const/4 v10, 0x2

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 367
    .local v3, "friendCaptionInvite":Lcom/samsung/privilege/bean/Friend;
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_de
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_de} :catch_df

    goto :goto_c5

    .line 378
    .end local v2    # "friend":Lcom/samsung/privilege/bean/Friend;
    .end local v3    # "friendCaptionInvite":Lcom/samsung/privilege/bean/Friend;
    .end local v5    # "friendMe":Lcom/samsung/privilege/bean/Friend;
    .end local v9    # "json_inapp":Lorg/json/JSONObject;
    :catch_df
    move-exception v1

    .line 379
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_e0
    sget-object v10, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "(GetCampaignListener|onComplete|for|JSONException):"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_e0 .. :try_end_f8} :catch_62

    goto :goto_ca

    .line 369
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "friend":Lcom/samsung/privilege/bean/Friend;
    .restart local v9    # "json_inapp":Lorg/json/JSONObject;
    :cond_f9
    :try_start_f9
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_c5

    .line 370
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/privilege/bean/Friend;

    .line 371
    .local v6, "friendPrev":Lcom/samsung/privilege/bean/Friend;
    iget-boolean v10, v6, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    if-eqz v10, :cond_c5

    iget-boolean v10, v2, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    if-nez v10, :cond_c5

    .line 372
    new-instance v3, Lcom/samsung/privilege/bean/Friend;

    const/4 v10, 0x2

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 373
    .restart local v3    # "friendCaptionInvite":Lcom/samsung/privilege/bean/Friend;
    iget-object v10, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12a
    .catch Lorg/json/JSONException; {:try_start_f9 .. :try_end_12a} :catch_df

    goto :goto_c5
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gFriends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/FriendsFragment;I)V
    .registers 2

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/FriendsFragment;->getFriends(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/FriendsFragment;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/FriendsFragment;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gListFriend:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/FriendsFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/FriendsFragment;Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsFragment$FriendsAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/FriendsFragment;->ProcessJsonFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/FriendsFragment;)Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/FriendsFragment;)I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gListOffset:I

    return v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/FriendsFragment;I)V
    .registers 2

    .prologue
    .line 70
    iput p1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gListOffset:I

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/FriendsFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/FriendsFragment;Z)V
    .registers 2

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsLoading:Z

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/FriendsFragment;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method private getFriends(I)V
    .registers 6
    .param p1, "offset"    # I

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 282
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsLoading:Z

    if-eqz v1, :cond_12

    .line 283
    sget-object v1, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    const-string v2, "if (gIsLoading == true) {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_11
    :goto_11
    return-void

    .line 285
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gIsLoading:Z

    .line 287
    const-string v0, "https://api.facebook.com/method/fql.query?query="

    .line 288
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "select uid,name,is_app_user from user where uid in (SELECT uid2 FROM friend WHERE uid1 = me()) order by is_app_user desc limit 25 offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&format=json&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    sget-object v1, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v1, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;-><init>(Lcom/samsung/privilege/activity/FriendsFragment;I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    sget-object v0, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 276
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/FriendsFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/FriendsFragment$2;-><init>(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method


# virtual methods
.method public doInvite(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_51

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/TagInvite;

    .line 601
    .local v4, "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 603
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, ""

    .line 605
    .local v3, "strFriend_invite_message":Ljava/lang/String;
    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f09032b

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_52

    move-result-object v3

    .line 609
    :goto_1e
    const-string v6, "message"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v6, "title"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v6, "to"

    iget-object v7, v4, Lcom/samsung/privilege/bean/TagInvite;->friend:Lcom/samsung/privilege/bean/Friend;

    iget-object v7, v7, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    new-instance v0, Lcom/facebook/widget/WebDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v7

    const-string v8, "apprequests"

    invoke-direct {v0, v6, v7, v8, v2}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 616
    .local v0, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v6, Lcom/samsung/privilege/activity/FriendsFragment$5;

    invoke-direct {v6, p0, v4}, Lcom/samsung/privilege/activity/FriendsFragment$5;-><init>(Lcom/samsung/privilege/activity/FriendsFragment;Lcom/samsung/privilege/bean/TagInvite;)V

    invoke-virtual {v0, v6}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 634
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v5

    .line 635
    .local v5, "webDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v5}, Lcom/facebook/widget/WebDialog;->show()V

    .line 637
    .end local v0    # "builder":Lcom/facebook/widget/WebDialog$Builder;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "strFriend_invite_message":Ljava/lang/String;
    .end local v4    # "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    .end local v5    # "webDialog":Lcom/facebook/widget/WebDialog;
    :cond_51
    return-void

    .line 606
    .restart local v2    # "params":Landroid/os/Bundle;
    .restart local v3    # "strFriend_invite_message":Ljava/lang/String;
    .restart local v4    # "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    :catch_52
    move-exception v1

    .line 607
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/privilege/activity/FriendsFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doInvite|Exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    iget v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gListOffset:I

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/FriendsFragment;->getFriends(I)V

    .line 184
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/FriendsFragment;->setRetainInstance(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 93
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 95
    :cond_18
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "cache_friend"

    invoke-direct {v0, v5, v6}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, 0x3e800000

    invoke-virtual {v0, v5, v6}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 101
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gScreenHeight:I

    .line 104
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gScreenWidth:I

    .line 105
    iget v4, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gScreenWidth:I

    .line 106
    .local v4, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gScreenHeight:I

    .line 107
    .local v2, "height":I
    if-le v2, v4, :cond_83

    .end local v2    # "height":I
    :goto_55
    div-int/lit8 v3, v2, 0x2

    .line 108
    .local v3, "longest":I
    new-instance v5, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 109
    iget-object v5, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v6, 0x7f0203a7

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 110
    iget-object v5, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 111
    iget-object v5, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 113
    if-eqz p1, :cond_82

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/FriendsFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    :cond_82
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_83
    move v2, v4

    .line 107
    goto :goto_55
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const v1, 0x7f0300ed

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0c0337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gListFriend:Landroid/widget/ListView;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030124

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->footerListView:Landroid/view/View;

    .line 130
    iget-object v1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->gListFriend:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/privilege/activity/FriendsFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/FriendsFragment$1;-><init>(Lcom/samsung/privilege/activity/FriendsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 173
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 248
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 252
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 253
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 244
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 261
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 226
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 227
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 228
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 206
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 211
    const-string v1, "fql_friend"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "catch_friend":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 213
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/FriendsFragment;->ProcessJsonFriend(Ljava/lang/String;)V

    .line 216
    :cond_18
    iget-object v1, p0, Lcom/samsung/privilege/activity/FriendsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 217
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    sget-object v0, Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 202
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 236
    return-void
.end method
