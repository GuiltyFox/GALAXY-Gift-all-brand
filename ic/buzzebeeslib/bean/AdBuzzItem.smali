.class public Lic/buzzebeeslib/bean/AdBuzzItem;
.super Ljava/lang/Object;
.source "AdBuzzItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public IsLastItem:Z

.field public campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

.field public campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

.field public campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/bean/CampaignExtraAction;)V
    .registers 3
    .param p1, "campaignExtraAction"    # Lic/buzzebeeslib/bean/CampaignExtraAction;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    .line 9
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    .line 11
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->IsLastItem:Z

    .line 28
    iput-object p1, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    .line 29
    return-void
.end method

.method public constructor <init>(Lic/buzzebeeslib/bean/CampaignExtraAdItem;)V
    .registers 3
    .param p1, "campaignExtraAdItem"    # Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    .line 9
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    .line 11
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->IsLastItem:Z

    .line 20
    iput-object p1, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    .line 21
    return-void
.end method

.method public constructor <init>(Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;)V
    .registers 3
    .param p1, "campaignExtraSurveyPage"    # Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    .line 9
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    .line 11
    iput-object v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->IsLastItem:Z

    .line 24
    iput-object p1, p0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraSurveyPage:Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
