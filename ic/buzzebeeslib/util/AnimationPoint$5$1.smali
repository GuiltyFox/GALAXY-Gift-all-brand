.class Lic/buzzebeeslib/util/AnimationPoint$5$1;
.super Landroid/os/CountDownTimer;
.source "AnimationPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPoint$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/AnimationPoint$5;

.field private final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/AnimationPoint$5;JJLandroid/widget/Toast;)V
    .registers 7
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPoint$5$1;->this$1:Lic/buzzebeeslib/util/AnimationPoint$5;

    iput-object p6, p0, Lic/buzzebeeslib/util/AnimationPoint$5$1;->val$toast:Landroid/widget/Toast;

    .line 500
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$5$1;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 507
    return-void
.end method

.method public onTick(J)V
    .registers 4
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 502
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$5$1;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 503
    return-void
.end method
