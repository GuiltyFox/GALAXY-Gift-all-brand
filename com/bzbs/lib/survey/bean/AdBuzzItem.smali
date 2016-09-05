.class public Lcom/bzbs/lib/survey/bean/AdBuzzItem;
.super Ljava/lang/Object;
.source "AdBuzzItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

.field public b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

.field public c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    .line 9
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    .line 11
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->d:Z

    .line 20
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->a:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    .line 9
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    .line 11
    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->d:Z

    .line 24
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->b:Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
