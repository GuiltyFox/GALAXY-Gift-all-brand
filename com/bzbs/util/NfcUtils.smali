.class public Lcom/bzbs/util/NfcUtils;
.super Ljava/lang/Object;
.source "NfcUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/bzbs/util/NfcUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/util/NfcUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/bzbs/util/NfcUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

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

.method public static a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
    .registers 6

    .prologue
    .line 118
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 119
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 120
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 121
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 127
    const/4 v0, 0x0

    invoke-static {v1, p0, v0, p1, p2}, Lcom/bzbs/util/NfcUtils;->a(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 129
    :cond_29
    return-void
.end method

.method public static a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
    .registers 7

    .prologue
    .line 226
    invoke-static {p2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 227
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 228
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 229
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/bzbs/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/bzbs/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 232
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 233
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 235
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 237
    invoke-static {v1, p0, p1, p2, p3}, Lcom/bzbs/util/NfcUtils;->a(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 239
    :cond_3a
    return-void
.end method

.method private static a(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
    .registers 6

    .prologue
    .line 270
    new-instance v0, Lcom/bzbs/util/NfcUtils$1;

    invoke-direct {v0, p3, p2, p1}, Lcom/bzbs/util/NfcUtils$1;-><init>(Landroid/content/Context;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;)V

    invoke-virtual {p0, p4, v0}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 313
    return-void
.end method

.method public static a(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string/jumbo v3, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string/jumbo v3, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 40
    :cond_19
    const-string/jumbo v2, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_36

    .line 42
    array-length v1, v3

    new-array v2, v1, [Landroid/nfc/NdefMessage;

    move v1, v0

    .line 43
    :goto_26
    array-length v0, v3

    if-ge v1, v0, :cond_33

    .line 44
    aget-object v0, v3, v1

    check-cast v0, Landroid/nfc/NdefMessage;

    aput-object v0, v2, v1

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    :cond_33
    move-object v0, v2

    :goto_34
    move-object v1, v0

    .line 60
    :goto_35
    return-object v1

    .line 47
    :cond_36
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_53

    .line 49
    new-array v1, v0, [B

    .line 50
    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1, v1, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 51
    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v1, v4, [Landroid/nfc/NdefRecord;

    aput-object v2, v1, v0

    invoke-direct {v3, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 52
    new-array v1, v4, [Landroid/nfc/NdefMessage;

    aput-object v3, v1, v0

    move-object v0, v1

    .line 53
    goto :goto_34

    :cond_53
    move-object v0, v1

    .line 54
    goto :goto_34

    .line 58
    :cond_55
    sget-object v0, Lcom/bzbs/util/NfcUtils;->a:Ljava/lang/String;

    const-string/jumbo v2, "Unknown intent."

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public static b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 325
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 326
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 334
    :goto_d
    return-void

    .line 327
    :catch_e
    move-exception v0

    .line 329
    :try_start_f
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_34} :catch_35

    goto :goto_d

    .line 330
    :catch_35
    move-exception v0

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public static b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V
    .registers 6

    .prologue
    .line 255
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 256
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 257
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 258
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    iget-object v2, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 263
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 265
    const/4 v0, 0x0

    invoke-static {v1, p0, v0, p1, p2}, Lcom/bzbs/util/NfcUtils;->a(Lcom/facebook/share/widget/ShareDialog;Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 267
    :cond_31
    return-void
.end method

.method public static c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V
    .registers 5

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
