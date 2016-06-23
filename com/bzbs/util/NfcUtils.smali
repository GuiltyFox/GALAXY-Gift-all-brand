.class public Lcom/bzbs/util/NfcUtils;
.super Ljava/lang/Object;
.source "NfcUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/bzbs/util/NfcUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/util/NfcUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Action_CheckIn(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
    .registers 7
    .param p0, "objNFCTag"    # Lcom/bzbs/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 255
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 256
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 257
    .local v1, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 258
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 259
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    iget-object v3, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 260
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 263
    .local v0, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 265
    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, p2}, Lcom/bzbs/util/NfcUtils;->registerCallbackForFacebook(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 267
    .end local v0    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    :cond_31
    return-void
.end method

.method public static Action_OpenApp(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V
    .registers 9
    .param p0, "objNFCTag"    # Lcom/bzbs/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;

    .prologue
    .line 325
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 326
    .local v0, "LaunchApp":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 334
    .end local v0    # "LaunchApp":Landroid/content/Intent;
    :goto_d
    return-void

    .line 327
    :catch_e
    move-exception v2

    .line 329
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_f
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_34} :catch_35

    goto :goto_d

    .line 330
    :catch_35
    move-exception v1

    .line 331
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public static Action_OpenUrl(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V
    .registers 5
    .param p0, "objNFCTag"    # Lcom/bzbs/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/bzbs/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method public static Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V
    .registers 5
    .param p0, "objNFCTag"    # Lcom/bzbs/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    const-string/jumbo v1, "campaign_id"

    iget v2, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string/jumbo v1, "nfc_tag"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    return-void
.end method

.method public static Action_Share(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
    .registers 8
    .param p0, "objNFCTag"    # Lcom/bzbs/bean/NFCTag;
    .param p1, "objNFCTagReDeem"    # Lcom/bzbs/bean/NFCTag;
    .param p2, "objActivityContext"    # Landroid/content/Context;
    .param p3, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 226
    invoke-static {p2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 227
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    move-object v2, p2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 228
    .local v1, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 229
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 230
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 232
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 233
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 235
    .local v0, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 237
    invoke-static {v1, p0, p1, p2, p3}, Lcom/bzbs/util/NfcUtils;->registerCallbackForFacebook(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 239
    .end local v0    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    :cond_3a
    return-void
.end method

.method public static Action_Status(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
    .registers 7
    .param p0, "objNFCTag"    # Lcom/bzbs/bean/NFCTag;
    .param p1, "objActivityContext"    # Landroid/content/Context;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 118
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 119
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 120
    .local v1, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 121
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 125
    .local v0, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 127
    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, p2}, Lcom/bzbs/util/NfcUtils;->registerCallbackForFacebook(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 129
    .end local v0    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    :cond_29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/bzbs/util/NfcUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .registers 12
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "msgs":[Landroid/nfc/NdefMessage;
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    const-string/jumbo v7, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 40
    :cond_19
    const-string/jumbo v7, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 41
    .local v5, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v5, :cond_32

    .line 42
    array-length v7, v5

    new-array v4, v7, [Landroid/nfc/NdefMessage;

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    array-length v7, v5

    if-ge v2, v7, :cond_4d

    .line 44
    aget-object v7, v5, v2

    check-cast v7, Landroid/nfc/NdefMessage;

    aput-object v7, v4, v2

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 47
    .end local v2    # "i":I
    :cond_32
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_4e

    .line 49
    new-array v1, v9, [B

    .line 50
    .local v1, "empty":[B
    new-instance v6, Landroid/nfc/NdefRecord;

    const/4 v7, 0x5

    invoke-direct {v6, v7, v1, v1, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 51
    .local v6, "record":Landroid/nfc/NdefRecord;
    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v7, v10, [Landroid/nfc/NdefRecord;

    aput-object v6, v7, v9

    invoke-direct {v3, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 52
    .local v3, "msg":Landroid/nfc/NdefMessage;
    new-array v4, v10, [Landroid/nfc/NdefMessage;

    .end local v4    # "msgs":[Landroid/nfc/NdefMessage;
    aput-object v3, v4, v9

    .line 60
    .end local v1    # "empty":[B
    .end local v3    # "msg":Landroid/nfc/NdefMessage;
    .end local v5    # "rawMsgs":[Landroid/os/Parcelable;
    .end local v6    # "record":Landroid/nfc/NdefRecord;
    .restart local v4    # "msgs":[Landroid/nfc/NdefMessage;
    :cond_4d
    :goto_4d
    return-object v4

    .line 54
    .restart local v5    # "rawMsgs":[Landroid/os/Parcelable;
    :cond_4e
    const/4 v4, 0x0

    goto :goto_4d

    .line 58
    .end local v5    # "rawMsgs":[Landroid/os/Parcelable;
    :cond_50
    sget-object v7, Lcom/bzbs/util/NfcUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Unknown intent."

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method private static registerCallbackForFacebook(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
    .registers 6
    .param p0, "shareDialog"    # Lcom/facebook/share/widget/ShareDialog;
    .param p1, "objNFCTag"    # Lcom/bzbs/bean/NFCTag;
    .param p2, "objNFCTagReDeem"    # Lcom/bzbs/bean/NFCTag;
    .param p3, "objActivityContext"    # Landroid/content/Context;
    .param p4, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 270
    new-instance v0, Lcom/bzbs/util/NfcUtils$1;

    invoke-direct {v0, p3, p2, p1}, Lcom/bzbs/util/NfcUtils$1;-><init>(Landroid/content/Context;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;)V

    invoke-virtual {p0, p4, v0}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 313
    return-void
.end method

.method private static showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p0, "objActivityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Lcom/bzbs/util/NfcUtils$2;

    invoke-direct {v0, p0, p2}, Lcom/bzbs/util/NfcUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method


# virtual methods
.method public writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Ljava/lang/String;
    .registers 10
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_a2

    .line 65
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v4

    array-length v3, v4

    .line 68
    .local v3, "size":I
    :try_start_b
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 69
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v2, :cond_7f

    .line 70
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 72
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v4

    if-nez v4, :cond_42

    .line 73
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Tag is read-only."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_23

    .line 96
    .end local v2    # "ndef":Landroid/nfc/tech/Ndef;
    :catch_23
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to write tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ndef":Landroid/nfc/tech/Ndef;
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v4

    if-ge v4, v3, :cond_78

    .line 76
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Tag capacity is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bytes, message is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_78
    invoke-virtual {v2, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 80
    const-string/jumbo v4, "Wrote message to pre-formatted tag."

    .line 100
    .end local v2    # "ndef":Landroid/nfc/tech/Ndef;
    .end local v3    # "size":I
    :goto_7e
    return-object v4

    .line 82
    .restart local v2    # "ndef":Landroid/nfc/tech/Ndef;
    .restart local v3    # "size":I
    :cond_7f
    invoke-static {p2}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_82} :catch_23

    move-result-object v1

    .line 83
    .local v1, "format":Landroid/nfc/tech/NdefFormatable;
    if-eqz v1, :cond_99

    .line 85
    :try_start_85
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 86
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 88
    const-string/jumbo v4, "Formatted tag and wrote message"
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8e} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8e} :catch_23

    goto :goto_7e

    .line 89
    :catch_8f
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    :try_start_90
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Failed to format tag."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :cond_99
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Tag doesn\'t support NDEF."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a2} :catch_23

    .line 100
    .end local v1    # "format":Landroid/nfc/tech/NdefFormatable;
    .end local v2    # "ndef":Landroid/nfc/tech/Ndef;
    .end local v3    # "size":I
    :cond_a2
    const-string/jumbo v4, "Your device is not support!"

    goto :goto_7e
.end method
