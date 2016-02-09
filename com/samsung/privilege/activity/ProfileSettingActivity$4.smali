.class Lcom/samsung/privilege/activity/ProfileSettingActivity$4;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$4;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$4;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 741
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$4;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->openContextMenu(Landroid/view/View;)V

    .line 742
    return-void
.end method
