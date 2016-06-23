.class public Lcom/samsung/privilege/activity/TestCheckinActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TestCheckinActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/privilege/activity/TestCheckinActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/TestCheckinActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/TestCheckinActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/TestCheckinActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/TestCheckinActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/TestCheckinActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/TestCheckinActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/TestCheckinActivity$1;-><init>(Lcom/samsung/privilege/activity/TestCheckinActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method


# virtual methods
.method public doCheckinAPI(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/privilege/activity/TestCheckinActivity;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v3, "params":Landroid/os/Bundle;
    const-string/jumbo v0, "message"

    const-string/jumbo v1, "Nanyang Polytechnic def"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "place"

    const-string/jumbo v1, "104999729569954"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "{\'value\':\'EVERYONE\'}"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 72
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string/jumbo v2, "/me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/samsung/privilege/activity/TestCheckinActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/TestCheckinActivity$2;-><init>(Lcom/samsung/privilege/activity/TestCheckinActivity;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 81
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 82
    return-void
.end method

.method public doCheckinDialog(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 50
    .local v1, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 51
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string/jumbo v3, "Nanyang Polytechnic 123"

    .line 52
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    const-string/jumbo v3, "104999729569954"

    .line 53
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    const-string/jumbo v3, "Nanyang Polytechnic Nanyang Polytechnic Nanyang Polytechnic Nanyang Polytechnic Nanyang Polytechnic"

    .line 54
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    const-string/jumbo v3, "http://developers.facebook.com/android"

    .line 55
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 56
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 58
    .local v0, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 60
    .end local v0    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    :cond_3d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/TestCheckinActivity;->setContentView(I)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/TestCheckinActivity;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method
