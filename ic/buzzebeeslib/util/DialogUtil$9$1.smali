.class Lic/buzzebeeslib/util/DialogUtil$9$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/DialogUtil$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/DialogUtil$9;

.field private final synthetic val$tvSerial:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/DialogUtil$9;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/DialogUtil$9$1;->this$1:Lic/buzzebeeslib/util/DialogUtil$9;

    iput-object p2, p0, Lic/buzzebeeslib/util/DialogUtil$9$1;->val$tvSerial:Landroid/widget/TextView;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$9$1;->val$tvSerial:Landroid/widget/TextView;

    const-string v1, " XXXXXXXXX "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    return-void
.end method
