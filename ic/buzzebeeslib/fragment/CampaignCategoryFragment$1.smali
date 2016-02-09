.class Lic/buzzebeeslib/fragment/CampaignCategoryFragment$1;
.super Ljava/lang/Object;
.source "CampaignCategoryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/CampaignCategoryFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$1;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$1;->val$msg:Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 366
    iget-object v1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$1;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_9

    .line 372
    :goto_8
    return-void

    .line 370
    :cond_9
    iget-object v1, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$1;->this$0:Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/CampaignCategoryFragment$1;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 371
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8
.end method
