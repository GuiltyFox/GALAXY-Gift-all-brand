.class Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;
.super Ljava/lang/Object;
.source "CampaignCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/CampaignCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public LayoutMenu:Landroid/widget/RelativeLayout;

.field public LayoutMenuMyPoint:Landroid/widget/RelativeLayout;

.field public imgIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

.field public tvMenuName:Landroid/widget/TextView;

.field public tvMyPointCaption:Landroid/widget/TextView;

.field public tvMyPointNumber:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;)V
    .registers 3

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$ViewHolder;-><init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;)V

    return-void
.end method
