.class Lic/buzzebeeslib/activity/ProfileSettingActivity$3;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$3;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 768
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$3;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 769
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$3;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->openContextMenu(Landroid/view/View;)V

    .line 770
    return-void
.end method
