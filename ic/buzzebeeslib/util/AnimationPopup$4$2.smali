.class Lic/buzzebeeslib/util/AnimationPopup$4$2;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPopup$4;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/AnimationPopup$4;

.field private final synthetic val$pImagePopup1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/AnimationPopup$4;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPopup$4$2;->this$1:Lic/buzzebeeslib/util/AnimationPopup$4;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPopup$4$2;->val$pImagePopup1:Landroid/widget/ImageView;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$4$2;->val$pImagePopup1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    return-void
.end method
