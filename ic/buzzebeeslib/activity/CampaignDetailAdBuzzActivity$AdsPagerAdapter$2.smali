.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->initialViewSurvey(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 686
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 687
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->survey_confirm_exit:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 694
    const-string v3, "No"

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 700
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 701
    return-void
.end method
