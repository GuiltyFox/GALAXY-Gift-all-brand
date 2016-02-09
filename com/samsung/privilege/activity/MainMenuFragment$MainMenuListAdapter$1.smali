.class Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

.field private final synthetic val$model:Lcom/samsung/privilege/bean/MainMenuItemModel;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;Lcom/samsung/privilege/bean/MainMenuItemModel;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$1;->val$model:Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$1;->val$model:Lcom/samsung/privilege/bean/MainMenuItemModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_play_animation:Z

    .line 1794
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1799
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1804
    return-void
.end method
