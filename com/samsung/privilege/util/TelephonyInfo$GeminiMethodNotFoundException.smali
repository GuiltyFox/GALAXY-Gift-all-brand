.class Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
.super Ljava/lang/Exception;
.source "TelephonyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/TelephonyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeminiMethodNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xdd5638ea8e5679cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 230
    return-void
.end method
