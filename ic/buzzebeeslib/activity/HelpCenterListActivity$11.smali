.class Lic/buzzebeeslib/activity/HelpCenterListActivity$11;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->processLikeAction(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

.field private final synthetic val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1183
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-eqz v0, :cond_4a

    .line 1184
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    .line 1185
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iput-boolean v2, v0, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    .line 1191
    :goto_19
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v0, v0, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    if-gez v0, :cond_27

    .line 1192
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iput v2, v0, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    .line 1195
    :cond_27
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->tvLike:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v1, v1, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-eqz v0, :cond_5c

    .line 1198
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_detail_liked:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1202
    :goto_49
    return-void

    .line 1187
    :cond_4a
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    .line 1188
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    goto :goto_19

    .line 1200
    :cond_5c
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;->val$pTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_detail_like:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_49
.end method
