.class Lic/buzzebeeslib/util/AnimationPopup$3$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPopup$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/AnimationPopup$3;

.field private final synthetic val$pAnimationSet:I

.field private final synthetic val$pLayoutPopup:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/AnimationPopup$3;Landroid/widget/RelativeLayout;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPopup$3$1;->this$1:Lic/buzzebeeslib/util/AnimationPopup$3;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPopup$3$1;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iput p3, p0, Lic/buzzebeeslib/util/AnimationPopup$3$1;->val$pAnimationSet:I

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$3$1;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    return-void
.end method
