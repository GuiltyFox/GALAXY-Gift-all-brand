.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1$2;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1$2;->this$3:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$CheckAddressBeforeRedeemListener$1;

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 991
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 992
    return-void
.end method
