.class Lcom/bzbs/lib/survey/util/AnimationPopup$3$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    iget v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pAnimationSet:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 250
    :cond_10
    return-void
.end method
