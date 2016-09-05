.class final Lrx/internal/operators/NotificationLite$1;
.super Ljava/lang/Object;
.source "NotificationLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/NotificationLite;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const-string/jumbo v0, "Notification=>Completed"

    return-object v0
.end method
