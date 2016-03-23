.class public final Lcn/aigestudio/downloader/cons/PublicCons$AccessModes;
.super Ljava/lang/Object;
.source "PublicCons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/aigestudio/downloader/cons/PublicCons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessModes"
.end annotation


# static fields
.field public static final ACCESS_MODE_R:Ljava/lang/String; = "r"

.field public static final ACCESS_MODE_RW:Ljava/lang/String; = "rw"

.field public static final ACCESS_MODE_RWD:Ljava/lang/String; = "rwd"

.field public static final ACCESS_MODE_RWS:Ljava/lang/String; = "rws"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
