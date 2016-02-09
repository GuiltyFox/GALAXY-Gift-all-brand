.class public interface abstract Lic/buzzebeeslib/util/async/PostEvents$PostListener;
.super Ljava/lang/Object;
.source "PostEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/async/PostEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PostListener"
.end annotation


# virtual methods
.method public abstract onPostBegin()V
.end method

.method public abstract onPostFail(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V
.end method

.method public abstract onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation
.end method
