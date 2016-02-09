.class Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$3;
.super Ljava/lang/Object;
.source "PlaceMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->onPostFail(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;

.field private final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$3;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$3;->val$error:Ljava/lang/String;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 490
    const-string v0, "buzzebees.places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$3;->val$error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method
