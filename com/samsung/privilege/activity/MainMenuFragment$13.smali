.class Lcom/samsung/privilege/activity/MainMenuFragment$13;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->getRedeemData(Lcom/samsung/privilege/bean/MainMenuItemModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$13;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$13;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$7(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 1151
    return-void
.end method
