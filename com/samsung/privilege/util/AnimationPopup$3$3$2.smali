.class Lcom/samsung/privilege/util/AnimationPopup$3$3$2;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationPopup$3$3;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/util/AnimationPopup$3$3;

.field private final synthetic val$pImagePopup2:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/AnimationPopup$3$3;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationPopup$3$3$2;->this$2:Lcom/samsung/privilege/util/AnimationPopup$3$3;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationPopup$3$3$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationPopup$3$3$2;->val$pLayoutButton:Landroid/widget/LinearLayout;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$3$3$2;->val$pImagePopup2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$3$3$2;->val$pLayoutButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    return-void
.end method
