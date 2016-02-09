.class Lic/buzzebeeslib/util/ListenerUtil$1;
.super Ljava/lang/Object;
.source "ListenerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$objActivityContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/ListenerUtil$1;->val$objActivityContext:Landroid/content/Context;

    iput-object p2, p0, Lic/buzzebeeslib/util/ListenerUtil$1;->val$msg:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 30
    iget-object v1, p0, Lic/buzzebeeslib/util/ListenerUtil$1;->val$objActivityContext:Landroid/content/Context;

    iget-object v2, p0, Lic/buzzebeeslib/util/ListenerUtil$1;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 31
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    return-void
.end method
