.class public Lcom/samsung/privilege/activity/FriendsRankingFragment;
.super Landroid/support/v4/app/Fragment;
.source "FriendsRankingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;,
        Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;,
        Lcom/samsung/privilege/activity/FriendsRankingFragment$SampleDialogListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_friend"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"

.field private static LOGCAT:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;

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

.field private final gListPerPage:I

.field private gListSkip:I

.field private gMyRank:I

.field private gMyScore:J

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-string v0, "friends"

    sput-object v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 61
    const-class v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    .line 71
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListPerPage:I

    .line 72
    iput v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsHasData:Z

    .line 75
    iput v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gMyRank:I

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gMyScore:J

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListState:Landroid/os/Parcelable;

    .line 83
    iput v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListPosition:I

    .line 84
    iput v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mItemPosition:I

    .line 331
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsLoading:Z

    .line 53
    return-void
.end method

.method private ProcessJsonFriend(ZLjava/lang/String;)V
    .registers 26
    .param p1, "pFirstLoad"    # Z
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    if-eqz v19, :cond_68

    .line 400
    :try_start_6
    new-instance v15, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 401
    .local v15, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 403
    .local v18, "strFacebookUID":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1a
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-lt v14, v0, :cond_69

    .line 456
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_21b

    .line 457
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsHasData:Z

    .line 462
    :goto_30
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 463
    .local v7, "count_item":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I

    move/from16 v19, v0

    add-int v19, v19, v7

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/samsung/privilege/activity/FriendsRankingFragment$3;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/FriendsRankingFragment$4;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;Z)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_68} :catch_1a8

    .line 506
    .end local v7    # "count_item":I
    .end local v14    # "i":I
    .end local v15    # "jsonArray":Lorg/json/JSONArray;
    .end local v18    # "strFacebookUID":Ljava/lang/String;
    :cond_68
    :goto_68
    return-void

    .line 405
    .restart local v14    # "i":I
    .restart local v15    # "jsonArray":Lorg/json/JSONArray;
    .restart local v18    # "strFacebookUID":Ljava/lang/String;
    :cond_69
    :try_start_69
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 407
    .local v16, "jsonUser":Lorg/json/JSONObject;
    const-string v19, "UserId"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "UserId":Ljava/lang/String;
    const-string v19, "Name"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "Name":Ljava/lang/String;
    const-string v19, "IsBuzzeBeeFriends"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 411
    .local v4, "IsBuzzeBeeFriends":Z
    if-eqz v6, :cond_9b

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_bd

    .line 414
    :cond_9b
    const-string v19, "uid"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    const-string v19, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 416
    const-string v19, "is_app_user"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 419
    :cond_bd
    const/16 v17, 0x0

    .line 420
    .local v17, "layout_type":I
    if-eqz v4, :cond_169

    .line 421
    const/16 v17, 0x4

    .line 425
    :goto_c3
    new-instance v9, Lcom/samsung/privilege/bean/Friend;

    move/from16 v0, v17

    invoke-direct {v9, v0, v6, v5, v4}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 426
    .local v9, "friend":Lcom/samsung/privilege/bean/Friend;
    const-string v19, "Rank"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v9, Lcom/samsung/privilege/bean/Friend;->rank:I

    .line 427
    const-string v19, "Score"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Lcom/samsung/privilege/bean/Friend;->score:J

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_1c3

    .line 430
    new-instance v12, Lcom/samsung/privilege/bean/Friend;

    const/16 v19, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/UserLogin;->GetFacebookName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 431
    .local v12, "friendMe":Lcom/samsung/privilege/bean/Friend;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-boolean v0, v9, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16d

    .line 434
    new-instance v11, Lcom/samsung/privilege/bean/Friend;

    const/16 v19, 0x1

    const-string v20, ""

    const-string v21, ""

    const/16 v22, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 435
    .local v11, "friendCaptionMyFriend":Lcom/samsung/privilege/bean/Friend;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v11    # "friendCaptionMyFriend":Lcom/samsung/privilege/bean/Friend;
    .end local v12    # "friendMe":Lcom/samsung/privilege/bean/Friend;
    :cond_14c
    :goto_14c
    iget-object v0, v9, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_165

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v4    # "IsBuzzeBeeFriends":Z
    .end local v5    # "Name":Ljava/lang/String;
    .end local v6    # "UserId":Ljava/lang/String;
    .end local v9    # "friend":Lcom/samsung/privilege/bean/Friend;
    .end local v16    # "jsonUser":Lorg/json/JSONObject;
    .end local v17    # "layout_type":I
    :cond_165
    :goto_165
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1a

    .line 423
    .restart local v4    # "IsBuzzeBeeFriends":Z
    .restart local v5    # "Name":Ljava/lang/String;
    .restart local v6    # "UserId":Ljava/lang/String;
    .restart local v16    # "jsonUser":Lorg/json/JSONObject;
    .restart local v17    # "layout_type":I
    :cond_169
    const/16 v17, 0x5

    goto/16 :goto_c3

    .line 437
    .restart local v9    # "friend":Lcom/samsung/privilege/bean/Friend;
    .restart local v12    # "friendMe":Lcom/samsung/privilege/bean/Friend;
    :cond_16d
    new-instance v10, Lcom/samsung/privilege/bean/Friend;

    const/16 v19, 0x2

    const-string v20, ""

    const-string v21, ""

    const/16 v22, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 438
    .local v10, "friendCaptionInvite":Lcom/samsung/privilege/bean/Friend;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18d
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_18d} :catch_18e

    goto :goto_14c

    .line 451
    .end local v4    # "IsBuzzeBeeFriends":Z
    .end local v5    # "Name":Ljava/lang/String;
    .end local v6    # "UserId":Ljava/lang/String;
    .end local v9    # "friend":Lcom/samsung/privilege/bean/Friend;
    .end local v10    # "friendCaptionInvite":Lcom/samsung/privilege/bean/Friend;
    .end local v12    # "friendMe":Lcom/samsung/privilege/bean/Friend;
    .end local v16    # "jsonUser":Lorg/json/JSONObject;
    .end local v17    # "layout_type":I
    :catch_18e
    move-exception v8

    .line 452
    .local v8, "e":Lorg/json/JSONException;
    :try_start_18f
    sget-object v19, Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "(ProcessJsonFriend|for|JSONException):"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a7
    .catch Lorg/json/JSONException; {:try_start_18f .. :try_end_1a7} :catch_1a8

    goto :goto_165

    .line 502
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v14    # "i":I
    .end local v15    # "jsonArray":Lorg/json/JSONArray;
    .end local v18    # "strFacebookUID":Ljava/lang/String;
    :catch_1a8
    move-exception v8

    .line 503
    .restart local v8    # "e":Lorg/json/JSONException;
    sget-object v19, Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "(ProcessJsonFriend|JSONException):"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 440
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v4    # "IsBuzzeBeeFriends":Z
    .restart local v5    # "Name":Ljava/lang/String;
    .restart local v6    # "UserId":Ljava/lang/String;
    .restart local v9    # "friend":Lcom/samsung/privilege/bean/Friend;
    .restart local v14    # "i":I
    .restart local v15    # "jsonArray":Lorg/json/JSONArray;
    .restart local v16    # "jsonUser":Lorg/json/JSONObject;
    .restart local v17    # "layout_type":I
    .restart local v18    # "strFacebookUID":Ljava/lang/String;
    :cond_1c3
    :try_start_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_14c

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/privilege/bean/Friend;

    .line 442
    .local v13, "friendPrev":Lcom/samsung/privilege/bean/Friend;
    iget-boolean v0, v13, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14c

    iget-boolean v0, v9, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    move/from16 v19, v0

    if-nez v19, :cond_14c

    .line 443
    new-instance v10, Lcom/samsung/privilege/bean/Friend;

    const/16 v19, 0x2

    const-string v20, ""

    const-string v21, ""

    const/16 v22, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/samsung/privilege/bean/Friend;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 444
    .restart local v10    # "friendCaptionInvite":Lcom/samsung/privilege/bean/Friend;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_219
    .catch Lorg/json/JSONException; {:try_start_1c3 .. :try_end_219} :catch_18e

    goto/16 :goto_14c

    .line 459
    .end local v4    # "IsBuzzeBeeFriends":Z
    .end local v5    # "Name":Ljava/lang/String;
    .end local v6    # "UserId":Ljava/lang/String;
    .end local v9    # "friend":Lcom/samsung/privilege/bean/Friend;
    .end local v10    # "friendCaptionInvite":Lcom/samsung/privilege/bean/Friend;
    .end local v13    # "friendPrev":Lcom/samsung/privilege/bean/Friend;
    .end local v16    # "jsonUser":Lorg/json/JSONObject;
    .end local v17    # "layout_type":I
    :cond_21b
    const/16 v19, 0x0

    :try_start_21d
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsHasData:Z
    :try_end_223
    .catch Lorg/json/JSONException; {:try_start_21d .. :try_end_223} :catch_1a8

    goto/16 :goto_30
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/FriendsRankingFragment;)I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gMyRank:I

    return v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/FriendsRankingFragment;)I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I

    return v0
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V
    .registers 2

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getFriends(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/FriendsRankingFragment;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V
    .registers 2

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListPosition:I

    return-void
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V
    .registers 2

    .prologue
    .line 84
    iput p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mItemPosition:I

    return-void
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/FriendsRankingFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$20(Lcom/samsung/privilege/activity/FriendsRankingFragment;Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;

    return-void
.end method

.method static synthetic access$21(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gAdapter:Lcom/samsung/privilege/activity/FriendsRankingFragment$FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/FriendsRankingFragment;ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 397
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->ProcessJsonFriend(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/FriendsRankingFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/FriendsRankingFragment;Z)V
    .registers 2

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsLoading:Z

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/FriendsRankingFragment;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/FriendsRankingFragment;)J
    .registers 3

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gMyScore:J

    return-wide v0
.end method

.method private getFriends(I)V
    .registers 6
    .param p1, "skip"    # I

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 335
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsLoading:Z

    if-eqz v1, :cond_12

    .line 336
    sget-object v1, Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;

    const-string v2, "if (gIsLoading == true) {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_11
    :goto_11
    return-void

    .line 338
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsLoading:Z

    .line 340
    const-string v0, "https://api.facebook.com/method/fql.query?query="

    .line 341
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "select uid,name,is_app_user from user where uid in (SELECT uid2 FROM friend WHERE uid1 = me()) order by is_app_user desc limit 50 offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&format=json&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v1, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/FriendsRankingFragment$GetFriendsListener;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private getFriendsFromCatch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 319
    const-string v1, "catch_friend_bzbs"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "catch_friend":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 321
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->ProcessJsonFriend(ZLjava/lang/String;)V

    .line 323
    iput v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I

    .line 324
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getFriends(I)V

    .line 329
    :goto_1c
    return-void

    .line 326
    :cond_1d
    iput v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I

    .line 327
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getFriends(I)V

    goto :goto_1c
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 300
    sget-object v0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 302
    const-string v0, "gFriends"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    .line 304
    const-string v0, "gListSkip"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I

    .line 305
    const-string v0, "gIsHasData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsHasData:Z

    .line 309
    :try_start_29
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListState:Landroid/os/Parcelable;

    .line 310
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListPosition:I

    .line 311
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mItemPosition:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_41} :catch_42

    .line 316
    :cond_41
    :goto_41
    return-void

    .line 312
    :catch_42
    move-exception v0

    goto :goto_41
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/FriendsRankingFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/FriendsRankingFragment$2;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method


# virtual methods
.method public doInvite(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_53

    .line 698
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/TagInvite;

    .line 700
    .local v5, "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 702
    .local v2, "params":Landroid/os/Bundle;
    const-string v4, ""

    .line 704
    .local v4, "strFriend_invite_message":Ljava/lang/String;
    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f09032b

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_54

    move-result-object v4

    .line 708
    :goto_1e
    const-string v7, "message"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v7, "title"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v7, "to"

    iget-object v8, v5, Lcom/samsung/privilege/bean/TagInvite;->friend:Lcom/samsung/privilege/bean/Friend;

    iget-object v8, v8, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    .line 715
    .local v3, "session":Lcom/facebook/Session;
    if-eqz v3, :cond_53

    .line 716
    new-instance v0, Lcom/facebook/widget/WebDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "apprequests"

    invoke-direct {v0, v7, v3, v8, v2}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 717
    .local v0, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v7, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;

    invoke-direct {v7, p0, v5}, Lcom/samsung/privilege/activity/FriendsRankingFragment$5;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;Lcom/samsung/privilege/bean/TagInvite;)V

    invoke-virtual {v0, v7}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 740
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v6

    .line 741
    .local v6, "webDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v6}, Lcom/facebook/widget/WebDialog;->show()V

    .line 744
    .end local v0    # "builder":Lcom/facebook/widget/WebDialog$Builder;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "session":Lcom/facebook/Session;
    .end local v4    # "strFriend_invite_message":Ljava/lang/String;
    .end local v5    # "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    .end local v6    # "webDialog":Lcom/facebook/widget/WebDialog;
    :cond_53
    return-void

    .line 705
    .restart local v2    # "params":Landroid/os/Bundle;
    .restart local v4    # "strFriend_invite_message":Ljava/lang/String;
    .restart local v5    # "tagInvite":Lcom/samsung/privilege/bean/TagInvite;
    :catch_54
    move-exception v1

    .line 706
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "doInvite|Exception "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 194
    invoke-direct {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getFriendsFromCatch()V

    .line 195
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->setRetainInstance(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 104
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 106
    :cond_18
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "cache_friend"

    invoke-direct {v0, v5, v6}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, 0x3e800000

    invoke-virtual {v0, v5, v6}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 112
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gScreenHeight:I

    .line 115
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gScreenWidth:I

    .line 116
    iget v4, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gScreenWidth:I

    .line 117
    .local v4, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gScreenHeight:I

    .line 118
    .local v2, "height":I
    if-le v2, v4, :cond_83

    .end local v2    # "height":I
    :goto_55
    div-int/lit8 v3, v2, 0x2

    .line 119
    .local v3, "longest":I
    new-instance v5, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 120
    iget-object v5, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v6, 0x7f0203a7

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 121
    iget-object v5, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 122
    iget-object v5, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 124
    if-eqz p1, :cond_82

    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 129
    :cond_82
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_83
    move v2, v4

    .line 118
    goto :goto_55
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    const v1, 0x7f0300ed

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0c0337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030124

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->footerListView:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/FriendsRankingFragment$1;-><init>(Lcom/samsung/privilege/activity/FriendsRankingFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 184
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 258
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 259
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 250
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 263
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 267
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 234
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 217
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 222
    iget-object v0, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 223
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    sget-object v2, Lcom/samsung/privilege/activity/FriendsRankingFragment;->LOGCAT:Ljava/lang/String;

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string v2, "gFriends"

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gFriends:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 278
    const-string v2, "gListSkip"

    iget v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListSkip:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string v2, "gIsHasData"

    iget-boolean v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gIsHasData:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    :try_start_26
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListState:Landroid/os/Parcelable;

    .line 284
    const-string v2, "listState"

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 287
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListPosition:I

    .line 288
    const-string v2, "listPosition"

    iget v3, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->gListFriend:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_57

    :goto_4d
    iput v1, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mItemPosition:I

    .line 293
    const-string v1, "itemPosition"

    iget v2, p0, Lcom/samsung/privilege/activity/FriendsRankingFragment;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    .end local v0    # "itemView":Landroid/view/View;
    :goto_56
    return-void

    .line 292
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_57
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_5a} :catch_5c

    move-result v1

    goto :goto_4d

    .line 294
    .end local v0    # "itemView":Landroid/view/View;
    :catch_5c
    move-exception v1

    goto :goto_56
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 213
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 242
    return-void
.end method
