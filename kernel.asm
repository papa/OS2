
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	92013103          	ld	sp,-1760(sp) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x58>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	490050ef          	jal	ra,800054ac <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	220030ef          	jal	ra,800042a8 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001218:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000121c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001220:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001224:	0085b083          	ld	ra,8(a1)

    ret
    80001228:	00008067          	ret

000000008000122c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000122c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001230:	00853083          	ld	ra,8(a0)

    80001234:	00008067          	ret

0000000080001238 <_Z22thread_dispatch_kernelv>:
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001264:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000126c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001270:	0ff57513          	andi	a0,a0,255
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z18thread_exit_kernelv>:


int thread_exit_kernel()
{
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000128c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001294:	00050513          	mv	a0,a0
    return result;
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    800012b4:	00054783          	lbu	a5,0(a0)
    800012b8:	00078a63          	beqz	a5,800012cc <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    800012bc:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    800012c0:	00150513          	addi	a0,a0,1
    800012c4:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    800012c8:	fedff06f          	j	800012b4 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    800012cc:	00f58023          	sb	a5,0(a1)
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	01413023          	sd	s4,0(sp)
    800012f8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012fc:	00053783          	ld	a5,0(a0)
    80001300:	02078c63          	beqz	a5,80001338 <_Z17destroy_slab_listPP6slab_s+0x5c>
    80001304:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    80001308:	0107b783          	ld	a5,16(a5)
    8000130c:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    80001310:	00000913          	li	s2,0
    while(*slab != nullptr)
    80001314:	0004b503          	ld	a0,0(s1)
    80001318:	02050263          	beqz	a0,8000133c <_Z17destroy_slab_listPP6slab_s+0x60>
    {
        slab_t* nextSlab = (*slab)->next;
    8000131c:	00853a03          	ld	s4,8(a0)
        buddy_free(*slab, sz);
    80001320:	00098593          	mv	a1,s3
    80001324:	00002097          	auipc	ra,0x2
    80001328:	b4c080e7          	jalr	-1204(ra) # 80002e70 <_Z10buddy_freePvm>
        *slab = nextSlab;
    8000132c:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    80001330:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    80001334:	fe1ff06f          	j	80001314 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    80001338:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    8000133c:	00090513          	mv	a0,s2
    80001340:	02813083          	ld	ra,40(sp)
    80001344:	02013403          	ld	s0,32(sp)
    80001348:	01813483          	ld	s1,24(sp)
    8000134c:	01013903          	ld	s2,16(sp)
    80001350:	00813983          	ld	s3,8(sp)
    80001354:	00013a03          	ld	s4,0(sp)
    80001358:	03010113          	addi	sp,sp,48
    8000135c:	00008067          	ret

0000000080001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    80001360:	fc010113          	addi	sp,sp,-64
    80001364:	02113c23          	sd	ra,56(sp)
    80001368:	02813823          	sd	s0,48(sp)
    8000136c:	02913423          	sd	s1,40(sp)
    80001370:	03213023          	sd	s2,32(sp)
    80001374:	01313c23          	sd	s3,24(sp)
    80001378:	01413823          	sd	s4,16(sp)
    8000137c:	01513423          	sd	s5,8(sp)
    80001380:	04010413          	addi	s0,sp,64
    80001384:	00050493          	mv	s1,a0
    80001388:	00058513          	mv	a0,a1
    8000138c:	00060a93          	mv	s5,a2
    80001390:	00068a13          	mv	s4,a3
    80001394:	00070993          	mv	s3,a4
    80001398:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    8000139c:	00048593          	mv	a1,s1
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f08080e7          	jalr	-248(ra) # 800012a8 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    800013a8:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    800013ac:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    800013b0:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    800013b4:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    800013b8:	0404b423          	sd	zero,72(s1)
    800013bc:	0404b823          	sd	zero,80(s1)
    800013c0:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    800013c4:	0604ac23          	sw	zero,120(s1)
}
    800013c8:	03813083          	ld	ra,56(sp)
    800013cc:	03013403          	ld	s0,48(sp)
    800013d0:	02813483          	ld	s1,40(sp)
    800013d4:	02013903          	ld	s2,32(sp)
    800013d8:	01813983          	ld	s3,24(sp)
    800013dc:	01013a03          	ld	s4,16(sp)
    800013e0:	00813a83          	ld	s5,8(sp)
    800013e4:	04010113          	addi	sp,sp,64
    800013e8:	00008067          	ret

00000000800013ec <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	00913423          	sd	s1,8(sp)
    800013fc:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    80001400:	12050493          	addi	s1,a0,288

    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001404:	00000793          	li	a5,0
    80001408:	0140006f          	j	8000141c <_Z19slab_allocator_initP14buddyAllocator+0x30>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    8000140c:	00379713          	slli	a4,a5,0x3
    80001410:	00e50733          	add	a4,a0,a4
    80001414:	12073023          	sd	zero,288(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001418:	00178793          	addi	a5,a5,1
    8000141c:	00c00713          	li	a4,12
    80001420:	fef776e3          	bgeu	a4,a5,8000140c <_Z19slab_allocator_initP14buddyAllocator+0x20>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    80001424:	00000793          	li	a5,0
    80001428:	00000713          	li	a4,0
    8000142c:	08000693          	li	a3,128
    80001430:	00200613          	li	a2,2
    80001434:	00007597          	auipc	a1,0x7
    80001438:	bec58593          	addi	a1,a1,-1044 # 80008020 <CONSOLE_STATUS+0x10>
    8000143c:	18850513          	addi	a0,a0,392
    80001440:	00000097          	auipc	ra,0x0
    80001444:	f20080e7          	jalr	-224(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001448:	00048513          	mv	a0,s1
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	02854503          	lbu	a0,40(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	40b5553b          	sraw	a0,a0,a1
}
    80001490:	00157513          	andi	a0,a0,1
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800014ac:	41f5d79b          	sraiw	a5,a1,0x1f
    800014b0:	01d7d79b          	srliw	a5,a5,0x1d
    800014b4:	00b785bb          	addw	a1,a5,a1
    800014b8:	4035d71b          	sraiw	a4,a1,0x3
    800014bc:	00e50533          	add	a0,a0,a4
    800014c0:	02850703          	lb	a4,40(a0)
    800014c4:	0075f593          	andi	a1,a1,7
    800014c8:	40f585bb          	subw	a1,a1,a5
    800014cc:	00100793          	li	a5,1
    800014d0:	00b795bb          	sllw	a1,a5,a1
    800014d4:	00b765b3          	or	a1,a4,a1
    800014d8:	02b50423          	sb	a1,40(a0)
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014e8:	fd010113          	addi	sp,sp,-48
    800014ec:	02113423          	sd	ra,40(sp)
    800014f0:	02813023          	sd	s0,32(sp)
    800014f4:	00913c23          	sd	s1,24(sp)
    800014f8:	01213823          	sd	s2,16(sp)
    800014fc:	01313423          	sd	s3,8(sp)
    80001500:	03010413          	addi	s0,sp,48
    80001504:	00050913          	mv	s2,a0
    if(slab == nullptr)
    80001508:	08050863          	beqz	a0,80001598 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000150c:	00000493          	li	s1,0
    80001510:	01893783          	ld	a5,24(s2)
    80001514:	02f4fe63          	bgeu	s1,a5,80001550 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    80001518:	0004899b          	sext.w	s3,s1
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    8000152c:	00050663          	beqz	a0,80001538 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001530:	00148493          	addi	s1,s1,1
    80001534:	fddff06f          	j	80001510 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001538:	01093783          	ld	a5,16(s2)
    8000153c:	0607b783          	ld	a5,96(a5)
    80001540:	029784b3          	mul	s1,a5,s1
    80001544:	009904b3          	add	s1,s2,s1
    80001548:	22848493          	addi	s1,s1,552
            index = i;
            break;
    8000154c:	00c0006f          	j	80001558 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001550:	00000493          	li	s1,0
    int index = -1;
    80001554:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001558:	02048063          	beqz	s1,80001578 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000155c:	00098593          	mv	a1,s3
    80001560:	00090513          	mv	a0,s2
    80001564:	00000097          	auipc	ra,0x0
    80001568:	f3c080e7          	jalr	-196(ra) # 800014a0 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000156c:	02093783          	ld	a5,32(s2)
    80001570:	00178793          	addi	a5,a5,1
    80001574:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001578:	00048513          	mv	a0,s1
    8000157c:	02813083          	ld	ra,40(sp)
    80001580:	02013403          	ld	s0,32(sp)
    80001584:	01813483          	ld	s1,24(sp)
    80001588:	01013903          	ld	s2,16(sp)
    8000158c:	00813983          	ld	s3,8(sp)
    80001590:	03010113          	addi	sp,sp,48
    80001594:	00008067          	ret
        return nullptr;
    80001598:	00050493          	mv	s1,a0
    8000159c:	fddff06f          	j	80001578 <_Z14allocateObjectP6slab_s+0x90>

00000000800015a0 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800015ac:	02053783          	ld	a5,32(a0)
    800015b0:	01853503          	ld	a0,24(a0)
    800015b4:	40f50533          	sub	a0,a0,a5
}
    800015b8:	00153513          	seqz	a0,a0
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    800015d4:	02053503          	ld	a0,32(a0)
}
    800015d8:	00153513          	seqz	a0,a0
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00813423          	sd	s0,8(sp)
    800015f0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015f4:	00050e63          	beqz	a0,80001610 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015f8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015fc:	0005b783          	ld	a5,0(a1)
    80001600:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001604:	00078463          	beqz	a5,8000160c <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    80001608:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    8000160c:	00a5b023          	sd	a0,0(a1)
}
    80001610:	00813403          	ld	s0,8(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001628:	00053783          	ld	a5,0(a0)
    8000162c:	02078663          	beqz	a5,80001658 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001630:	00853703          	ld	a4,8(a0)
    80001634:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001638:	00070663          	beqz	a4,80001644 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    8000163c:	00053783          	ld	a5,0(a0)
    80001640:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001644:	00053023          	sd	zero,0(a0)
    80001648:	00053423          	sd	zero,8(a0)
    }
}
    8000164c:	00813403          	ld	s0,8(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001658:	00853783          	ld	a5,8(a0)
    8000165c:	00078463          	beqz	a5,80001664 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001660:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001664:	00853783          	ld	a5,8(a0)
    80001668:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000166c:	00053023          	sd	zero,0(a0)
    80001670:	00053423          	sd	zero,8(a0)
    80001674:	fd9ff06f          	j	8000164c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001678 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001678:	fe010113          	addi	sp,sp,-32
    8000167c:	00113c23          	sd	ra,24(sp)
    80001680:	00813823          	sd	s0,16(sp)
    80001684:	00913423          	sd	s1,8(sp)
    80001688:	01213023          	sd	s2,0(sp)
    8000168c:	02010413          	addi	s0,sp,32
    80001690:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001694:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001698:	05050593          	addi	a1,a0,80
    8000169c:	00090513          	mv	a0,s2
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f7c080e7          	jalr	-132(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800016a8:	04848593          	addi	a1,s1,72
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	f38080e7          	jalr	-200(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	00013903          	ld	s2,0(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ec:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016f0:	04050593          	addi	a1,a0,64
    800016f4:	00090513          	mv	a0,s2
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	f24080e7          	jalr	-220(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001700:	05048593          	addi	a1,s1,80
    80001704:	00090513          	mv	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	ee0080e7          	jalr	-288(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	00013903          	ld	s2,0(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret

0000000080001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00113c23          	sd	ra,24(sp)
    80001730:	00813823          	sd	s0,16(sp)
    80001734:	00913423          	sd	s1,8(sp)
    80001738:	01213023          	sd	s2,0(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050913          	mv	s2,a0
    80001744:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001748:	04850593          	addi	a1,a0,72
    8000174c:	00048513          	mv	a0,s1
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ecc080e7          	jalr	-308(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001758:	05090593          	addi	a1,s2,80
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	e88080e7          	jalr	-376(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	01213023          	sd	s2,0(sp)
    80001794:	02010413          	addi	s0,sp,32
    80001798:	00050913          	mv	s2,a0
    8000179c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800017a0:	05050593          	addi	a1,a0,80
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	e74080e7          	jalr	-396(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800017b0:	04090593          	addi	a1,s2,64
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e30080e7          	jalr	-464(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	00013903          	ld	s2,0(sp)
    800017d0:	02010113          	addi	sp,sp,32
    800017d4:	00008067          	ret

00000000800017d8 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800017d8:	fd010113          	addi	sp,sp,-48
    800017dc:	02113423          	sd	ra,40(sp)
    800017e0:	02813023          	sd	s0,32(sp)
    800017e4:	00913c23          	sd	s1,24(sp)
    800017e8:	01213823          	sd	s2,16(sp)
    800017ec:	01313423          	sd	s3,8(sp)
    800017f0:	03010413          	addi	s0,sp,48
    800017f4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(cachep->slab_size);
    800017f8:	05853503          	ld	a0,88(a0)
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	380080e7          	jalr	896(ra) # 80002b7c <_Z11buddy_allocm>
    if(newSlab == nullptr)
    80001804:	08050c63          	beqz	a0,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
    80001808:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    8000180c:	0409b783          	ld	a5,64(s3)
    80001810:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001814:	00078463          	beqz	a5,8000181c <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    80001818:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    8000181c:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    80001820:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    80001824:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    80001828:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    8000182c:	0589b683          	ld	a3,88(s3)
    80001830:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001834:	dd868693          	addi	a3,a3,-552
    80001838:	0609b783          	ld	a5,96(s3)
    8000183c:	02f6d6b3          	divu	a3,a3,a5
    80001840:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001844:	00000713          	li	a4,0
    80001848:	00768793          	addi	a5,a3,7
    8000184c:	0037d793          	srli	a5,a5,0x3
    80001850:	00f77a63          	bgeu	a4,a5,80001864 <_Z12allocateSlabP12kmem_cache_s+0x8c>
        newSlab->allocated[i] = 0;
    80001854:	00e487b3          	add	a5,s1,a4
    80001858:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    8000185c:	00170713          	addi	a4,a4,1
    80001860:	fe9ff06f          	j	80001848 <_Z12allocateSlabP12kmem_cache_s+0x70>

    if(cachep->ctor != nullptr)
    80001864:	0689b783          	ld	a5,104(s3)
    80001868:	02078a63          	beqz	a5,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    8000186c:	00000913          	li	s2,0
    80001870:	0184b783          	ld	a5,24(s1)
    80001874:	02f97463          	bgeu	s2,a5,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001878:	0689b783          	ld	a5,104(s3)
    8000187c:	0104b703          	ld	a4,16(s1)
    80001880:	06073503          	ld	a0,96(a4)
    80001884:	03250533          	mul	a0,a0,s2
    80001888:	00a48533          	add	a0,s1,a0
    8000188c:	22850513          	addi	a0,a0,552
    80001890:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001894:	00190913          	addi	s2,s2,1
    80001898:	fd9ff06f          	j	80001870 <_Z12allocateSlabP12kmem_cache_s+0x98>
    }
}
    8000189c:	02813083          	ld	ra,40(sp)
    800018a0:	02013403          	ld	s0,32(sp)
    800018a4:	01813483          	ld	s1,24(sp)
    800018a8:	01013903          	ld	s2,16(sp)
    800018ac:	00813983          	ld	s3,8(sp)
    800018b0:	03010113          	addi	sp,sp,48
    800018b4:	00008067          	ret

00000000800018b8 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00813423          	sd	s0,8(sp)
    800018c0:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800018c4:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018c8:	22850713          	addi	a4,a0,552
    800018cc:	00e7f663          	bgeu	a5,a4,800018d8 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800018d0:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018d4:	ff5ff06f          	j	800018c8 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018d8:	dd878593          	addi	a1,a5,-552 # dd8 <_entry-0x7ffff228>
    800018dc:	02a5f5b3          	remu	a1,a1,a0
    800018e0:	00078313          	mv	t1,a5
    size_t oldSize = bestSize;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018e4:	00100693          	li	a3,1
    800018e8:	0080006f          	j	800018f0 <_Z18getOptimalSlabSizem+0x38>
    800018ec:	00168693          	addi	a3,a3,1
    800018f0:	00400713          	li	a4,4
    800018f4:	02d76663          	bltu	a4,a3,80001920 <_Z18getOptimalSlabSizem+0x68>
    {
        size_t newSize = oldSize << i;
    800018f8:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800018fc:	dd860713          	addi	a4,a2,-552
    80001900:	02a77833          	remu	a6,a4,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    80001904:	02a75733          	divu	a4,a4,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001908:	feb872e3          	bgeu	a6,a1,800018ec <_Z18getOptimalSlabSizem+0x34>
    8000190c:	000018b7          	lui	a7,0x1
    80001910:	fce8eee3          	bltu	a7,a4,800018ec <_Z18getOptimalSlabSizem+0x34>
        {
            optimalWaste = newWaste;
    80001914:	00080593          	mv	a1,a6
            bestSize = newSize;
    80001918:	00060313          	mv	t1,a2
    8000191c:	fd1ff06f          	j	800018ec <_Z18getOptimalSlabSizem+0x34>
        }
    }
    for(size_t i = lowerConst;i<=highConst;i++)
    80001920:	00100613          	li	a2,1
    80001924:	0080006f          	j	8000192c <_Z18getOptimalSlabSizem+0x74>
    80001928:	00160613          	addi	a2,a2,1
    8000192c:	00400713          	li	a4,4
    80001930:	02c76863          	bltu	a4,a2,80001960 <_Z18getOptimalSlabSizem+0xa8>
    {
        size_t newSize = oldSize + i*BLOCK_SIZE;
    80001934:	00c61693          	slli	a3,a2,0xc
    80001938:	00f686b3          	add	a3,a3,a5
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    8000193c:	dd868713          	addi	a4,a3,-552
    80001940:	02a77833          	remu	a6,a4,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    80001944:	02a75733          	divu	a4,a4,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001948:	feb870e3          	bgeu	a6,a1,80001928 <_Z18getOptimalSlabSizem+0x70>
    8000194c:	000018b7          	lui	a7,0x1
    80001950:	fce8ece3          	bltu	a7,a4,80001928 <_Z18getOptimalSlabSizem+0x70>
        {
            optimalWaste = newWaste;
    80001954:	00080593          	mv	a1,a6
            bestSize = newSize;
    80001958:	00068313          	mv	t1,a3
    8000195c:	fcdff06f          	j	80001928 <_Z18getOptimalSlabSizem+0x70>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    80001960:	00c35513          	srli	a0,t1,0xc
    80001964:	00813403          	ld	s0,8(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001970:	ff010113          	addi	sp,sp,-16
    80001974:	00813423          	sd	s0,8(sp)
    80001978:	01010413          	addi	s0,sp,16
    8000197c:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    80001980:	02050c63          	beqz	a0,800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001984:	06058a63          	beqz	a1,800019f8 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001988:	04853503          	ld	a0,72(a0)
    8000198c:	0080006f          	j	80001994 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001990:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001994:	02050863          	beqz	a0,800019c4 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001998:	01853783          	ld	a5,24(a0)
    8000199c:	01053703          	ld	a4,16(a0)
    800019a0:	06073703          	ld	a4,96(a4)
    800019a4:	02e787b3          	mul	a5,a5,a4
    800019a8:	00a787b3          	add	a5,a5,a0
    800019ac:	22878793          	addi	a5,a5,552
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800019b0:	feb570e3          	bgeu	a0,a1,80001990 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    800019b4:	fcf5fee3          	bgeu	a1,a5,80001990 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    800019b8:	00813403          	ld	s0,8(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret
    slab = cachep->slabs_partial;
    800019c4:	0506b503          	ld	a0,80(a3)
    800019c8:	0080006f          	j	800019d0 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    800019cc:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800019d0:	fe0504e3          	beqz	a0,800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800019d4:	01853783          	ld	a5,24(a0)
    800019d8:	01053703          	ld	a4,16(a0)
    800019dc:	06073703          	ld	a4,96(a4)
    800019e0:	02e787b3          	mul	a5,a5,a4
    800019e4:	00a787b3          	add	a5,a5,a0
    800019e8:	22878793          	addi	a5,a5,552
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800019ec:	feb570e3          	bgeu	a0,a1,800019cc <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019f0:	fcf5fee3          	bgeu	a1,a5,800019cc <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019f4:	fc5ff06f          	j	800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800019f8:	00058513          	mv	a0,a1
    800019fc:	fbdff06f          	j	800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x48>

0000000080001a00 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00813423          	sd	s0,8(sp)
    80001a08:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001a0c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001a10:	01d7d79b          	srliw	a5,a5,0x1d
    80001a14:	00b785bb          	addw	a1,a5,a1
    80001a18:	4035d71b          	sraiw	a4,a1,0x3
    80001a1c:	00e50533          	add	a0,a0,a4
    80001a20:	02850703          	lb	a4,40(a0)
    80001a24:	0075f593          	andi	a1,a1,7
    80001a28:	40f585bb          	subw	a1,a1,a5
    80001a2c:	00100793          	li	a5,1
    80001a30:	00b795bb          	sllw	a1,a5,a1
    80001a34:	fff5c593          	not	a1,a1
    80001a38:	00b775b3          	and	a1,a4,a1
    80001a3c:	02b50423          	sb	a1,40(a0)
}
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001a4c:	fe010113          	addi	sp,sp,-32
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	00813823          	sd	s0,16(sp)
    80001a58:	00913423          	sd	s1,8(sp)
    80001a5c:	02010413          	addi	s0,sp,32
    80001a60:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001a64:	00006517          	auipc	a0,0x6
    80001a68:	5cc50513          	addi	a0,a0,1484 # 80008030 <CONSOLE_STATUS+0x20>
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	ab0080e7          	jalr	-1360(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001a74:	01000613          	li	a2,16
    80001a78:	00048593          	mv	a1,s1
    80001a7c:	00006517          	auipc	a0,0x6
    80001a80:	5cc50513          	addi	a0,a0,1484 # 80008048 <CONSOLE_STATUS+0x38>
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	b70080e7          	jalr	-1168(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a8c:	00a00613          	li	a2,10
    80001a90:	0204b583          	ld	a1,32(s1)
    80001a94:	00006517          	auipc	a0,0x6
    80001a98:	5c450513          	addi	a0,a0,1476 # 80008058 <CONSOLE_STATUS+0x48>
    80001a9c:	00002097          	auipc	ra,0x2
    80001aa0:	b58080e7          	jalr	-1192(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001aa4:	00a00613          	li	a2,10
    80001aa8:	0184b583          	ld	a1,24(s1)
    80001aac:	00006517          	auipc	a0,0x6
    80001ab0:	5cc50513          	addi	a0,a0,1484 # 80008078 <CONSOLE_STATUS+0x68>
    80001ab4:	00002097          	auipc	ra,0x2
    80001ab8:	b40080e7          	jalr	-1216(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001abc:	01813083          	ld	ra,24(sp)
    80001ac0:	01013403          	ld	s0,16(sp)
    80001ac4:	00813483          	ld	s1,8(sp)
    80001ac8:	02010113          	addi	sp,sp,32
    80001acc:	00008067          	ret

0000000080001ad0 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001ad0:	12050a63          	beqz	a0,80001c04 <_Z16free_slab_objectP6slab_sPKv+0x134>
{
    80001ad4:	fd010113          	addi	sp,sp,-48
    80001ad8:	02113423          	sd	ra,40(sp)
    80001adc:	02813023          	sd	s0,32(sp)
    80001ae0:	00913c23          	sd	s1,24(sp)
    80001ae4:	01213823          	sd	s2,16(sp)
    80001ae8:	01313423          	sd	s3,8(sp)
    80001aec:	01413023          	sd	s4,0(sp)
    80001af0:	03010413          	addi	s0,sp,48
    80001af4:	00050493          	mv	s1,a0
    80001af8:	00058993          	mv	s3,a1
    if(slab == nullptr || objp == nullptr)
    80001afc:	08058463          	beqz	a1,80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001b00:	40a58933          	sub	s2,a1,a0
    80001b04:	dd890913          	addi	s2,s2,-552
    80001b08:	01053a03          	ld	s4,16(a0)
    80001b0c:	060a3783          	ld	a5,96(s4)
    80001b10:	02f95933          	divu	s2,s2,a5
    80001b14:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001b18:	032787b3          	mul	a5,a5,s2
    80001b1c:	00f507b3          	add	a5,a0,a5
    80001b20:	22878793          	addi	a5,a5,552
    80001b24:	06f59063          	bne	a1,a5,80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001b28:	00090593          	mv	a1,s2
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	934080e7          	jalr	-1740(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80001b34:	04050863          	beqz	a0,80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001b38:	070a3783          	ld	a5,112(s4)
    80001b3c:	00078663          	beqz	a5,80001b48 <_Z16free_slab_objectP6slab_sPKv+0x78>
        cachep->dtor((void*)objp);
    80001b40:	00098513          	mv	a0,s3
    80001b44:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001b48:	068a3783          	ld	a5,104(s4)
    80001b4c:	00078663          	beqz	a5,80001b58 <_Z16free_slab_objectP6slab_sPKv+0x88>
        cachep->ctor((void*)objp);
    80001b50:	00098513          	mv	a0,s3
    80001b54:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001b58:	00090593          	mv	a1,s2
    80001b5c:	00048513          	mv	a0,s1
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	ea0080e7          	jalr	-352(ra) # 80001a00 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b68:	0184b703          	ld	a4,24(s1)
    80001b6c:	0204b783          	ld	a5,32(s1)
    80001b70:	02f70a63          	beq	a4,a5,80001ba4 <_Z16free_slab_objectP6slab_sPKv+0xd4>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001b74:	00100713          	li	a4,1
    80001b78:	06e78663          	beq	a5,a4,80001be4 <_Z16free_slab_objectP6slab_sPKv+0x114>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001b7c:	fff78793          	addi	a5,a5,-1
    80001b80:	02f4b023          	sd	a5,32(s1)
}
    80001b84:	02813083          	ld	ra,40(sp)
    80001b88:	02013403          	ld	s0,32(sp)
    80001b8c:	01813483          	ld	s1,24(sp)
    80001b90:	01013903          	ld	s2,16(sp)
    80001b94:	00813983          	ld	s3,8(sp)
    80001b98:	00013a03          	ld	s4,0(sp)
    80001b9c:	03010113          	addi	sp,sp,48
    80001ba0:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001ba4:	00048593          	mv	a1,s1
    80001ba8:	0104b503          	ld	a0,16(s1)
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	b7c080e7          	jalr	-1156(ra) # 80001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bb4:	0204b783          	ld	a5,32(s1)
    80001bb8:	fff78793          	addi	a5,a5,-1
    80001bbc:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001bc0:	00048513          	mv	a0,s1
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	a04080e7          	jalr	-1532(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001bcc:	fa050ce3          	beqz	a0,80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
            removePartialSlab(slab->owner, slab);
    80001bd0:	00048593          	mv	a1,s1
    80001bd4:	0104b503          	ld	a0,16(s1)
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	ba8080e7          	jalr	-1112(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001be0:	fa5ff06f          	j	80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001be4:	00048593          	mv	a1,s1
    80001be8:	0104b503          	ld	a0,16(s1)
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	b94080e7          	jalr	-1132(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bf4:	0204b783          	ld	a5,32(s1)
    80001bf8:	fff78793          	addi	a5,a5,-1
    80001bfc:	02f4b023          	sd	a5,32(s1)
    80001c00:	f85ff06f          	j	80001b84 <_Z16free_slab_objectP6slab_sPKv+0xb4>
    80001c04:	00008067          	ret

0000000080001c08 <_Z9kmem_initPvi>:
    printBuddyInfo();
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00113423          	sd	ra,8(sp)
    80001c10:	00813023          	sd	s0,0(sp)
    80001c14:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	164080e7          	jalr	356(ra) # 80002d7c <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001c20:	fffff097          	auipc	ra,0xfffff
    80001c24:	7cc080e7          	jalr	1996(ra) # 800013ec <_Z19slab_allocator_initP14buddyAllocator>
    80001c28:	00007797          	auipc	a5,0x7
    80001c2c:	daa7b423          	sd	a0,-600(a5) # 800089d0 <_ZL13slabAllocator>
}
    80001c30:	00813083          	ld	ra,8(sp)
    80001c34:	00013403          	ld	s0,0(sp)
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00008067          	ret

0000000080001c40 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001c40:	fe010113          	addi	sp,sp,-32
    80001c44:	00113c23          	sd	ra,24(sp)
    80001c48:	00813823          	sd	s0,16(sp)
    80001c4c:	00913423          	sd	s1,8(sp)
    80001c50:	01213023          	sd	s2,0(sp)
    80001c54:	02010413          	addi	s0,sp,32
    80001c58:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001c5c:	10050a63          	beqz	a0,80001d70 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001c60:	05053503          	ld	a0,80(a0)
    80001c64:	04051a63          	bnez	a0,80001cb8 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c68:	0404b503          	ld	a0,64(s1)
    80001c6c:	08050a63          	beqz	a0,80001d00 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	878080e7          	jalr	-1928(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c78:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c7c:	0404b503          	ld	a0,64(s1)
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	948080e7          	jalr	-1720(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001c88:	04051663          	bnez	a0,80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c8c:	00048513          	mv	a0,s1
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	a40080e7          	jalr	-1472(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c98:	0504b503          	ld	a0,80(s1)
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	904080e7          	jalr	-1788(ra) # 800015a0 <_Z4fullP6slab_s>
    80001ca4:	02050863          	beqz	a0,80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	9cc080e7          	jalr	-1588(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001cb4:	0200006f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	830080e7          	jalr	-2000(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001cc0:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001cc4:	0504b503          	ld	a0,80(s1)
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	8d8080e7          	jalr	-1832(ra) # 800015a0 <_Z4fullP6slab_s>
    80001cd0:	02051063          	bnez	a0,80001cf0 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001cd4:	00090513          	mv	a0,s2
    80001cd8:	01813083          	ld	ra,24(sp)
    80001cdc:	01013403          	ld	s0,16(sp)
    80001ce0:	00813483          	ld	s1,8(sp)
    80001ce4:	00013903          	ld	s2,0(sp)
    80001ce8:	02010113          	addi	sp,sp,32
    80001cec:	00008067          	ret
            putPartialToFull(cachep);
    80001cf0:	00048513          	mv	a0,s1
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	984080e7          	jalr	-1660(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cfc:	fd9ff06f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001d00:	00048513          	mv	a0,s1
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	ad4080e7          	jalr	-1324(ra) # 800017d8 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001d0c:	0404b903          	ld	s2,64(s1)
    80001d10:	04090863          	beqz	s2,80001d60 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001d14:	00090513          	mv	a0,s2
    80001d18:	fffff097          	auipc	ra,0xfffff
    80001d1c:	7d0080e7          	jalr	2000(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001d20:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001d24:	0404b503          	ld	a0,64(s1)
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	8a0080e7          	jalr	-1888(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001d30:	fa0512e3          	bnez	a0,80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001d34:	00048513          	mv	a0,s1
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	998080e7          	jalr	-1640(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001d40:	0504b503          	ld	a0,80(s1)
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	85c080e7          	jalr	-1956(ra) # 800015a0 <_Z4fullP6slab_s>
    80001d4c:	f80504e3          	beqz	a0,80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001d50:	00048513          	mv	a0,s1
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	924080e7          	jalr	-1756(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001d5c:	f79ff06f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001d60:	0784a783          	lw	a5,120(s1)
    80001d64:	0017e793          	ori	a5,a5,1
    80001d68:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d6c:	f69ff06f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d70:	00050913          	mv	s2,a0
    80001d74:	f61ff06f          	j	80001cd4 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d78:	fc010113          	addi	sp,sp,-64
    80001d7c:	02113c23          	sd	ra,56(sp)
    80001d80:	02813823          	sd	s0,48(sp)
    80001d84:	02913423          	sd	s1,40(sp)
    80001d88:	03213023          	sd	s2,32(sp)
    80001d8c:	01313c23          	sd	s3,24(sp)
    80001d90:	01413823          	sd	s4,16(sp)
    80001d94:	01513423          	sd	s5,8(sp)
    80001d98:	04010413          	addi	s0,sp,64
    80001d9c:	00050993          	mv	s3,a0
    80001da0:	00058913          	mv	s2,a1
    80001da4:	00060a13          	mv	s4,a2
    80001da8:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001dac:	00007517          	auipc	a0,0x7
    80001db0:	c2453503          	ld	a0,-988(a0) # 800089d0 <_ZL13slabAllocator>
    80001db4:	06850513          	addi	a0,a0,104
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	e88080e7          	jalr	-376(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001dc0:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001dc4:	02050863          	beqz	a0,80001df4 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001dc8:	00090513          	mv	a0,s2
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	aec080e7          	jalr	-1300(ra) # 800018b8 <_Z18getOptimalSlabSizem>
    80001dd4:	00050613          	mv	a2,a0
    80001dd8:	000a8793          	mv	a5,s5
    80001ddc:	000a0713          	mv	a4,s4
    80001de0:	00090693          	mv	a3,s2
    80001de4:	00098593          	mv	a1,s3
    80001de8:	00048513          	mv	a0,s1
    80001dec:	fffff097          	auipc	ra,0xfffff
    80001df0:	574080e7          	jalr	1396(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001df4:	00048513          	mv	a0,s1
    80001df8:	03813083          	ld	ra,56(sp)
    80001dfc:	03013403          	ld	s0,48(sp)
    80001e00:	02813483          	ld	s1,40(sp)
    80001e04:	02013903          	ld	s2,32(sp)
    80001e08:	01813983          	ld	s3,24(sp)
    80001e0c:	01013a03          	ld	s4,16(sp)
    80001e10:	00813a83          	ld	s5,8(sp)
    80001e14:	04010113          	addi	sp,sp,64
    80001e18:	00008067          	ret

0000000080001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001e1c:	04050663          	beqz	a0,80001e68 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001e20:	fe010113          	addi	sp,sp,-32
    80001e24:	00113c23          	sd	ra,24(sp)
    80001e28:	00813823          	sd	s0,16(sp)
    80001e2c:	00913423          	sd	s1,8(sp)
    80001e30:	02010413          	addi	s0,sp,32
    80001e34:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001e38:	00058e63          	beqz	a1,80001e54 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	b34080e7          	jalr	-1228(ra) # 80001970 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001e44:	00050863          	beqz	a0,80001e54 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001e48:	00048593          	mv	a1,s1
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	c84080e7          	jalr	-892(ra) # 80001ad0 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e54:	01813083          	ld	ra,24(sp)
    80001e58:	01013403          	ld	s0,16(sp)
    80001e5c:	00813483          	ld	s1,8(sp)
    80001e60:	02010113          	addi	sp,sp,32
    80001e64:	00008067          	ret
    80001e68:	00008067          	ret

0000000080001e6c <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001e6c:	14050c63          	beqz	a0,80001fc4 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001e70:	fe010113          	addi	sp,sp,-32
    80001e74:	00113c23          	sd	ra,24(sp)
    80001e78:	00813823          	sd	s0,16(sp)
    80001e7c:	00913423          	sd	s1,8(sp)
    80001e80:	01213023          	sd	s2,0(sp)
    80001e84:	02010413          	addi	s0,sp,32
    80001e88:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n");
    80001e8c:	00006517          	auipc	a0,0x6
    80001e90:	20450513          	addi	a0,a0,516 # 80008090 <CONSOLE_STATUS+0x80>
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	688080e7          	jalr	1672(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e9c:	00006517          	auipc	a0,0x6
    80001ea0:	1fc50513          	addi	a0,a0,508 # 80008098 <CONSOLE_STATUS+0x88>
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	678080e7          	jalr	1656(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001eac:	00006517          	auipc	a0,0x6
    80001eb0:	22450513          	addi	a0,a0,548 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	668080e7          	jalr	1640(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001ebc:	00090513          	mv	a0,s2
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	65c080e7          	jalr	1628(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    80001ec8:	00006517          	auipc	a0,0x6
    80001ecc:	2b050513          	addi	a0,a0,688 # 80008178 <CONSOLE_STATUS+0x168>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	64c080e7          	jalr	1612(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001ed8:	00a00613          	li	a2,10
    80001edc:	05893583          	ld	a1,88(s2)
    80001ee0:	00006517          	auipc	a0,0x6
    80001ee4:	20050513          	addi	a0,a0,512 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	70c080e7          	jalr	1804(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001ef0:	00a00613          	li	a2,10
    80001ef4:	06093583          	ld	a1,96(s2)
    80001ef8:	00006517          	auipc	a0,0x6
    80001efc:	20850513          	addi	a0,a0,520 # 80008100 <CONSOLE_STATUS+0xf0>
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	6f4080e7          	jalr	1780(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001f08:	00006517          	auipc	a0,0x6
    80001f0c:	21850513          	addi	a0,a0,536 # 80008120 <CONSOLE_STATUS+0x110>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	60c080e7          	jalr	1548(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001f18:	00006517          	auipc	a0,0x6
    80001f1c:	22850513          	addi	a0,a0,552 # 80008140 <CONSOLE_STATUS+0x130>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	5fc080e7          	jalr	1532(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001f28:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001f2c:	00048c63          	beqz	s1,80001f44 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80001f30:	00048513          	mv	a0,s1
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	b18080e7          	jalr	-1256(ra) # 80001a4c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f3c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f40:	fedff06f          	j	80001f2c <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001f44:	00006517          	auipc	a0,0x6
    80001f48:	20c50513          	addi	a0,a0,524 # 80008150 <CONSOLE_STATUS+0x140>
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	5d0080e7          	jalr	1488(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001f54:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001f58:	00048c63          	beqz	s1,80001f70 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    80001f5c:	00048513          	mv	a0,s1
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	aec080e7          	jalr	-1300(ra) # 80001a4c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f68:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f6c:	fedff06f          	j	80001f58 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001f70:	00006517          	auipc	a0,0x6
    80001f74:	1f050513          	addi	a0,a0,496 # 80008160 <CONSOLE_STATUS+0x150>
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	5a4080e7          	jalr	1444(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001f80:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f84:	00048c63          	beqz	s1,80001f9c <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	ac0080e7          	jalr	-1344(ra) # 80001a4c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f94:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f98:	fedff06f          	j	80001f84 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n");
    80001f9c:	00006517          	auipc	a0,0x6
    80001fa0:	0f450513          	addi	a0,a0,244 # 80008090 <CONSOLE_STATUS+0x80>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	578080e7          	jalr	1400(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
}
    80001fac:	01813083          	ld	ra,24(sp)
    80001fb0:	01013403          	ld	s0,16(sp)
    80001fb4:	00813483          	ld	s1,8(sp)
    80001fb8:	00013903          	ld	s2,0(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret
    80001fc4:	00008067          	ret

0000000080001fc8 <_Z22printSlabAllocatorInfov>:
{
    80001fc8:	fe010113          	addi	sp,sp,-32
    80001fcc:	00113c23          	sd	ra,24(sp)
    80001fd0:	00813823          	sd	s0,16(sp)
    80001fd4:	00913423          	sd	s1,8(sp)
    80001fd8:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80001fdc:	00006517          	auipc	a0,0x6
    80001fe0:	19450513          	addi	a0,a0,404 # 80008170 <CONSOLE_STATUS+0x160>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	538080e7          	jalr	1336(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001fec:	00006517          	auipc	a0,0x6
    80001ff0:	19450513          	addi	a0,a0,404 # 80008180 <CONSOLE_STATUS+0x170>
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	528080e7          	jalr	1320(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001ffc:	00007497          	auipc	s1,0x7
    80002000:	9d448493          	addi	s1,s1,-1580 # 800089d0 <_ZL13slabAllocator>
    80002004:	01000613          	li	a2,16
    80002008:	0004b583          	ld	a1,0(s1)
    8000200c:	00006517          	auipc	a0,0x6
    80002010:	1c450513          	addi	a0,a0,452 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80002014:	00001097          	auipc	ra,0x1
    80002018:	5e0080e7          	jalr	1504(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    8000201c:	00006517          	auipc	a0,0x6
    80002020:	1cc50513          	addi	a0,a0,460 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80002024:	00001097          	auipc	ra,0x1
    80002028:	4f8080e7          	jalr	1272(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    8000202c:	0004b503          	ld	a0,0(s1)
    80002030:	06850513          	addi	a0,a0,104
    80002034:	00000097          	auipc	ra,0x0
    80002038:	e38080e7          	jalr	-456(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    8000203c:	00006517          	auipc	a0,0x6
    80002040:	1c450513          	addi	a0,a0,452 # 80008200 <CONSOLE_STATUS+0x1f0>
    80002044:	00001097          	auipc	ra,0x1
    80002048:	4d8080e7          	jalr	1240(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000204c:	00000493          	li	s1,0
    80002050:	0100006f          	j	80002060 <_Z22printSlabAllocatorInfov+0x98>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80002054:	00000097          	auipc	ra,0x0
    80002058:	e18080e7          	jalr	-488(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000205c:	00148493          	addi	s1,s1,1
    80002060:	00c00793          	li	a5,12
    80002064:	0297e063          	bltu	a5,s1,80002084 <_Z22printSlabAllocatorInfov+0xbc>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002068:	00349793          	slli	a5,s1,0x3
    8000206c:	00007717          	auipc	a4,0x7
    80002070:	96473703          	ld	a4,-1692(a4) # 800089d0 <_ZL13slabAllocator>
    80002074:	00f707b3          	add	a5,a4,a5
    80002078:	0007b503          	ld	a0,0(a5)
    8000207c:	fc051ce3          	bnez	a0,80002054 <_Z22printSlabAllocatorInfov+0x8c>
    80002080:	fddff06f          	j	8000205c <_Z22printSlabAllocatorInfov+0x94>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80002084:	00006517          	auipc	a0,0x6
    80002088:	0ec50513          	addi	a0,a0,236 # 80008170 <CONSOLE_STATUS+0x160>
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	490080e7          	jalr	1168(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    printBuddyInfo();
    80002094:	00001097          	auipc	ra,0x1
    80002098:	e4c080e7          	jalr	-436(ra) # 80002ee0 <_Z14printBuddyInfov>
}
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	01013403          	ld	s0,16(sp)
    800020a4:	00813483          	ld	s1,8(sp)
    800020a8:	02010113          	addi	sp,sp,32
    800020ac:	00008067          	ret

00000000800020b0 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    800020b0:	fd010113          	addi	sp,sp,-48
    800020b4:	02113423          	sd	ra,40(sp)
    800020b8:	02813023          	sd	s0,32(sp)
    800020bc:	00913c23          	sd	s1,24(sp)
    800020c0:	01213823          	sd	s2,16(sp)
    800020c4:	01313423          	sd	s3,8(sp)
    800020c8:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	93c080e7          	jalr	-1732(ra) # 80002a08 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    800020d4:	00400793          	li	a5,4
    800020d8:	00a7fa63          	bgeu	a5,a0,800020ec <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    800020dc:	01100793          	li	a5,17
    800020e0:	00a7f863          	bgeu	a5,a0,800020f0 <_Z7kmallocm+0x40>
        return nullptr;
    800020e4:	00000913          	li	s2,0
    800020e8:	04c0006f          	j	80002134 <_Z7kmallocm+0x84>
        level = CACHE_BUFFER_SMALL;
    800020ec:	00500513          	li	a0,5
    size = (1 << level);
    800020f0:	00100693          	li	a3,1
    800020f4:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    800020f8:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800020fc:	00007917          	auipc	s2,0x7
    80002100:	8d493903          	ld	s2,-1836(s2) # 800089d0 <_ZL13slabAllocator>
    80002104:	00349793          	slli	a5,s1,0x3
    80002108:	00f907b3          	add	a5,s2,a5
    8000210c:	0007b783          	ld	a5,0(a5)
    80002110:	04078263          	beqz	a5,80002154 <_Z7kmallocm+0xa4>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80002114:	00349513          	slli	a0,s1,0x3
    80002118:	00007497          	auipc	s1,0x7
    8000211c:	8b84b483          	ld	s1,-1864(s1) # 800089d0 <_ZL13slabAllocator>
    80002120:	00a48533          	add	a0,s1,a0
    80002124:	00053503          	ld	a0,0(a0)
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	b18080e7          	jalr	-1256(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002130:	00050913          	mv	s2,a0
}
    80002134:	00090513          	mv	a0,s2
    80002138:	02813083          	ld	ra,40(sp)
    8000213c:	02013403          	ld	s0,32(sp)
    80002140:	01813483          	ld	s1,24(sp)
    80002144:	01013903          	ld	s2,16(sp)
    80002148:	00813983          	ld	s3,8(sp)
    8000214c:	03010113          	addi	sp,sp,48
    80002150:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80002154:	06890513          	addi	a0,s2,104
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	ae8080e7          	jalr	-1304(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002160:	00349713          	slli	a4,s1,0x3
    80002164:	00e90933          	add	s2,s2,a4
    80002168:	00a93023          	sd	a0,0(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    8000216c:	00007797          	auipc	a5,0x7
    80002170:	8647b783          	ld	a5,-1948(a5) # 800089d0 <_ZL13slabAllocator>
    80002174:	00e787b3          	add	a5,a5,a4
    80002178:	0007b903          	ld	s2,0(a5)
    8000217c:	fa090ce3          	beqz	s2,80002134 <_Z7kmallocm+0x84>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002180:	00098513          	mv	a0,s3
    80002184:	fffff097          	auipc	ra,0xfffff
    80002188:	734080e7          	jalr	1844(ra) # 800018b8 <_Z18getOptimalSlabSizem>
    8000218c:	00050613          	mv	a2,a0
    80002190:	00000793          	li	a5,0
    80002194:	00000713          	li	a4,0
    80002198:	00098693          	mv	a3,s3
    8000219c:	00006597          	auipc	a1,0x6
    800021a0:	07c58593          	addi	a1,a1,124 # 80008218 <CONSOLE_STATUS+0x208>
    800021a4:	00090513          	mv	a0,s2
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	1b8080e7          	jalr	440(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    800021b0:	f65ff06f          	j	80002114 <_Z7kmallocm+0x64>

00000000800021b4 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    800021b4:	0a050263          	beqz	a0,80002258 <_Z5kfreePKv+0xa4>
{
    800021b8:	fd010113          	addi	sp,sp,-48
    800021bc:	02113423          	sd	ra,40(sp)
    800021c0:	02813023          	sd	s0,32(sp)
    800021c4:	00913c23          	sd	s1,24(sp)
    800021c8:	01213823          	sd	s2,16(sp)
    800021cc:	01313423          	sd	s3,8(sp)
    800021d0:	03010413          	addi	s0,sp,48
    800021d4:	00050993          	mv	s3,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021d8:	00000913          	li	s2,0
    slab_t* slab = nullptr;
    800021dc:	00000493          	li	s1,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021e0:	00c00793          	li	a5,12
    800021e4:	0327ea63          	bltu	a5,s2,80002218 <_Z5kfreePKv+0x64>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    800021e8:	00391793          	slli	a5,s2,0x3
    800021ec:	00006717          	auipc	a4,0x6
    800021f0:	7e473703          	ld	a4,2020(a4) # 800089d0 <_ZL13slabAllocator>
    800021f4:	00f707b3          	add	a5,a4,a5
    800021f8:	00098593          	mv	a1,s3
    800021fc:	0007b503          	ld	a0,0(a5)
    80002200:	fffff097          	auipc	ra,0xfffff
    80002204:	770080e7          	jalr	1904(ra) # 80001970 <_Z8findSlabP12kmem_cache_sPKv>
    80002208:	00050493          	mv	s1,a0
        if(slab != nullptr) break;
    8000220c:	00051663          	bnez	a0,80002218 <_Z5kfreePKv+0x64>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002210:	00190913          	addi	s2,s2,1
    80002214:	fcdff06f          	j	800021e0 <_Z5kfreePKv+0x2c>
    }
    if(slab != nullptr)
    80002218:	02048263          	beqz	s1,8000223c <_Z5kfreePKv+0x88>
    {
        free_slab_object(slab, objp);
    8000221c:	00098593          	mv	a1,s3
    80002220:	00048513          	mv	a0,s1
    80002224:	00000097          	auipc	ra,0x0
    80002228:	8ac080e7          	jalr	-1876(ra) # 80001ad0 <_Z16free_slab_objectP6slab_sPKv>
        destroy_slab_list(&(slab->owner->slabs_empty));
    8000222c:	0104b503          	ld	a0,16(s1)
    80002230:	04050513          	addi	a0,a0,64
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	0a8080e7          	jalr	168(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    }
}
    8000223c:	02813083          	ld	ra,40(sp)
    80002240:	02013403          	ld	s0,32(sp)
    80002244:	01813483          	ld	s1,24(sp)
    80002248:	01013903          	ld	s2,16(sp)
    8000224c:	00813983          	ld	s3,8(sp)
    80002250:	03010113          	addi	sp,sp,48
    80002254:	00008067          	ret
    80002258:	00008067          	ret

000000008000225c <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    8000225c:	fe010113          	addi	sp,sp,-32
    80002260:	00113c23          	sd	ra,24(sp)
    80002264:	00813823          	sd	s0,16(sp)
    80002268:	00913423          	sd	s1,8(sp)
    8000226c:	02010413          	addi	s0,sp,32
    80002270:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    80002274:	05053783          	ld	a5,80(a0)
    80002278:	02078263          	beqz	a5,8000229c <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
        cachep->errors |= DESTROY_ERROR;
    8000227c:	0784a783          	lw	a5,120(s1)
    80002280:	0027e793          	ori	a5,a5,2
    80002284:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    80002288:	01813083          	ld	ra,24(sp)
    8000228c:	01013403          	ld	s0,16(sp)
    80002290:	00813483          	ld	s1,8(sp)
    80002294:	02010113          	addi	sp,sp,32
    80002298:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    8000229c:	04853783          	ld	a5,72(a0)
    800022a0:	fc079ee3          	bnez	a5,8000227c <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(&cachep->slabs_empty);
    800022a4:	04050513          	addi	a0,a0,64
    800022a8:	fffff097          	auipc	ra,0xfffff
    800022ac:	034080e7          	jalr	52(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    800022b0:	05048513          	addi	a0,s1,80
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	028080e7          	jalr	40(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    800022bc:	04848513          	addi	a0,s1,72
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	01c080e7          	jalr	28(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    800022c8:	00048593          	mv	a1,s1
    800022cc:	00006517          	auipc	a0,0x6
    800022d0:	70453503          	ld	a0,1796(a0) # 800089d0 <_ZL13slabAllocator>
    800022d4:	06850513          	addi	a0,a0,104
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	b44080e7          	jalr	-1212(ra) # 80001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    800022e0:	fa9ff06f          	j	80002288 <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

00000000800022e4 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800022e4:	02050863          	beqz	a0,80002314 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    800022f8:	04050513          	addi	a0,a0,64
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	fe0080e7          	jalr	-32(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    80002304:	00813083          	ld	ra,8(sp)
    80002308:	00013403          	ld	s0,0(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret
        return 0;
    80002314:	00000513          	li	a0,0
}
    80002318:	00008067          	ret

000000008000231c <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    8000231c:	06050c63          	beqz	a0,80002394 <_Z16kmem_cache_errorP12kmem_cache_s+0x78>
{
    80002320:	fe010113          	addi	sp,sp,-32
    80002324:	00113c23          	sd	ra,24(sp)
    80002328:	00813823          	sd	s0,16(sp)
    8000232c:	00913423          	sd	s1,8(sp)
    80002330:	02010413          	addi	s0,sp,32
    80002334:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    80002338:	07852783          	lw	a5,120(a0)
    8000233c:	0017f793          	andi	a5,a5,1
    80002340:	02079663          	bnez	a5,8000236c <_Z16kmem_cache_errorP12kmem_cache_s+0x50>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002344:	0784a783          	lw	a5,120(s1)
    80002348:	0027f793          	andi	a5,a5,2
    8000234c:	02079a63          	bnez	a5,80002380 <_Z16kmem_cache_errorP12kmem_cache_s+0x64>
        KConsole::trapPrintString("DESTROY ERROR");

    cachep->errors = NO_ERROR;
    80002350:	0604ac23          	sw	zero,120(s1)

    return cachep->errors;
}
    80002354:	00000513          	li	a0,0
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	00813483          	ld	s1,8(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    8000236c:	00006517          	auipc	a0,0x6
    80002370:	ec450513          	addi	a0,a0,-316 # 80008230 <CONSOLE_STATUS+0x220>
    80002374:	00001097          	auipc	ra,0x1
    80002378:	1a8080e7          	jalr	424(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    8000237c:	fc9ff06f          	j	80002344 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    80002380:	00006517          	auipc	a0,0x6
    80002384:	ec050513          	addi	a0,a0,-320 # 80008240 <CONSOLE_STATUS+0x230>
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	194080e7          	jalr	404(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    80002390:	fc1ff06f          	j	80002350 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
}
    80002394:	00000513          	li	a0,0
    80002398:	00008067          	ret

000000008000239c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00113423          	sd	ra,8(sp)
    800023a4:	00813023          	sd	s0,0(sp)
    800023a8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800023ac:	00002097          	auipc	ra,0x2
    800023b0:	8e0080e7          	jalr	-1824(ra) # 80003c8c <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800023b4:	00006797          	auipc	a5,0x6
    800023b8:	6247b783          	ld	a5,1572(a5) # 800089d8 <_ZN3PCB7runningE>
    800023bc:	0287b703          	ld	a4,40(a5)
    800023c0:	0307b503          	ld	a0,48(a5)
    800023c4:	000700e7          	jalr	a4

    thread_exit_kernel();
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	eb8080e7          	jalr	-328(ra) # 80001280 <_Z18thread_exit_kernelv>
}
    800023d0:	00813083          	ld	ra,8(sp)
    800023d4:	00013403          	ld	s0,0(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret

00000000800023e0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00813423          	sd	s0,8(sp)
    800023e8:	01010413          	addi	s0,sp,16
    })
    800023ec:	00050023          	sb	zero,0(a0)
    800023f0:	00e53c23          	sd	a4,24(a0)
    800023f4:	02053023          	sd	zero,32(a0)
    800023f8:	02b53423          	sd	a1,40(a0)
    800023fc:	02c53823          	sd	a2,48(a0)
    80002400:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002404:	000017b7          	lui	a5,0x1
    80002408:	00f686b3          	add	a3,a3,a5
    })
    8000240c:	04d53423          	sd	a3,72(a0)
    80002410:	00000797          	auipc	a5,0x0
    80002414:	f8c78793          	addi	a5,a5,-116 # 8000239c <_ZN3PCB6runnerEv>
    80002418:	04f53823          	sd	a5,80(a0)
    8000241c:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002420:	00053423          	sd	zero,8(a0)
}
    80002424:	00813403          	ld	s0,8(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN3PCB5startEv>:
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002440:	00001097          	auipc	ra,0x1
    80002444:	394080e7          	jalr	916(ra) # 800037d4 <_ZN9Scheduler3putEP3PCB>
}
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002458:	fe010113          	addi	sp,sp,-32
    8000245c:	00113c23          	sd	ra,24(sp)
    80002460:	00813823          	sd	s0,16(sp)
    80002464:	00913423          	sd	s1,8(sp)
    80002468:	01213023          	sd	s2,0(sp)
    8000246c:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002470:	00006497          	auipc	s1,0x6
    80002474:	5684b483          	ld	s1,1384(s1) # 800089d8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002478:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    8000247c:	00100793          	li	a5,1
    80002480:	04f70a63          	beq	a4,a5,800024d4 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);

    PCB::running = Scheduler::get();
    80002484:	00001097          	auipc	ra,0x1
    80002488:	3a4080e7          	jalr	932(ra) # 80003828 <_ZN9Scheduler3getEv>
    8000248c:	00006917          	auipc	s2,0x6
    80002490:	54c90913          	addi	s2,s2,1356 # 800089d8 <_ZN3PCB7runningE>
    80002494:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002498:	00100793          	li	a5,1
    8000249c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800024a0:	00002097          	auipc	ra,0x2
    800024a4:	dc8080e7          	jalr	-568(ra) # 80004268 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800024a8:	00093583          	ld	a1,0(s2)
    800024ac:	04858593          	addi	a1,a1,72
    800024b0:	04848513          	addi	a0,s1,72
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	d64080e7          	jalr	-668(ra) # 80001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800024bc:	01813083          	ld	ra,24(sp)
    800024c0:	01013403          	ld	s0,16(sp)
    800024c4:	00813483          	ld	s1,8(sp)
    800024c8:	00013903          	ld	s2,0(sp)
    800024cc:	02010113          	addi	sp,sp,32
    800024d0:	00008067          	ret
        Scheduler::put(old);
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	2fc080e7          	jalr	764(ra) # 800037d4 <_ZN9Scheduler3putEP3PCB>
    800024e0:	fa5ff06f          	j	80002484 <_ZN3PCB8dispatchEv+0x2c>

00000000800024e4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00113423          	sd	ra,8(sp)
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    800024f4:	00006797          	auipc	a5,0x6
    800024f8:	47c7b783          	ld	a5,1148(a5) # 80008970 <_GLOBAL_OFFSET_TABLE_+0xa8>
    800024fc:	0007b503          	ld	a0,0(a5)
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	740080e7          	jalr	1856(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002508:	00813083          	ld	ra,8(sp)
    8000250c:	00013403          	ld	s0,0(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00113423          	sd	ra,8(sp)
    80002520:	00813023          	sd	s0,0(sp)
    80002524:	01010413          	addi	s0,sp,16
    80002528:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    8000252c:	00006797          	auipc	a5,0x6
    80002530:	4447b783          	ld	a5,1092(a5) # 80008970 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002534:	0007b503          	ld	a0,0(a5)
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	8e4080e7          	jalr	-1820(ra) # 80001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00113423          	sd	ra,8(sp)
    80002558:	00813023          	sd	s0,0(sp)
    8000255c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002560:	03853503          	ld	a0,56(a0)
    80002564:	00002097          	auipc	ra,0x2
    80002568:	470080e7          	jalr	1136(ra) # 800049d4 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000256c:	00813083          	ld	ra,8(sp)
    80002570:	00013403          	ld	s0,0(sp)
    80002574:	01010113          	addi	sp,sp,16
    80002578:	00008067          	ret

000000008000257c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000257c:	fe010113          	addi	sp,sp,-32
    80002580:	00113c23          	sd	ra,24(sp)
    80002584:	00813823          	sd	s0,16(sp)
    80002588:	00913423          	sd	s1,8(sp)
    8000258c:	01213023          	sd	s2,0(sp)
    80002590:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002594:	06000513          	li	a0,96
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	f4c080e7          	jalr	-180(ra) # 800024e4 <_ZN3PCBnwEm>
    800025a0:	00050493          	mv	s1,a0
    800025a4:	00050e63          	beqz	a0,800025c0 <_ZN3PCB10initializeEv+0x44>
    800025a8:	00000713          	li	a4,0
    800025ac:	00000693          	li	a3,0
    800025b0:	00000613          	li	a2,0
    800025b4:	00000593          	li	a1,0
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	e28080e7          	jalr	-472(ra) # 800023e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800025c0:	00100793          	li	a5,1
    800025c4:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800025c8:	00006797          	auipc	a5,0x6
    800025cc:	4097b823          	sd	s1,1040(a5) # 800089d8 <_ZN3PCB7runningE>
    800025d0:	00100793          	li	a5,1
    800025d4:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    800025d8:	00001537          	lui	a0,0x1
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	ad4080e7          	jalr	-1324(ra) # 800020b0 <_Z7kmallocm>
    800025e4:	00050913          	mv	s2,a0
//                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800025e8:	06000513          	li	a0,96
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	ef8080e7          	jalr	-264(ra) # 800024e4 <_ZN3PCBnwEm>
    800025f4:	00050493          	mv	s1,a0
    800025f8:	02050063          	beqz	a0,80002618 <_ZN3PCB10initializeEv+0x9c>
    800025fc:	00200713          	li	a4,2
    80002600:	00090693          	mv	a3,s2
    80002604:	00000613          	li	a2,0
    80002608:	00006597          	auipc	a1,0x6
    8000260c:	3285b583          	ld	a1,808(a1) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002610:	00000097          	auipc	ra,0x0
    80002614:	dd0080e7          	jalr	-560(ra) # 800023e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    80002618:	00006797          	auipc	a5,0x6
    8000261c:	3c078793          	addi	a5,a5,960 # 800089d8 <_ZN3PCB7runningE>
    80002620:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    80002624:	00100713          	li	a4,1
    80002628:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    8000262c:	0087b503          	ld	a0,8(a5)
    80002630:	00000097          	auipc	ra,0x0
    80002634:	e00080e7          	jalr	-512(ra) # 80002430 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
//                           kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    80002638:	00001537          	lui	a0,0x1
    8000263c:	00002097          	auipc	ra,0x2
    80002640:	328080e7          	jalr	808(ra) # 80004964 <_ZN15MemoryAllocator7kmallocEm>
    80002644:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    80002648:	06000513          	li	a0,96
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	e98080e7          	jalr	-360(ra) # 800024e4 <_ZN3PCBnwEm>
    80002654:	00050493          	mv	s1,a0
    80002658:	02050063          	beqz	a0,80002678 <_ZN3PCB10initializeEv+0xfc>
    8000265c:	00200713          	li	a4,2
    80002660:	00090693          	mv	a3,s2
    80002664:	00000613          	li	a2,0
    80002668:	00006597          	auipc	a1,0x6
    8000266c:	2d05b583          	ld	a1,720(a1) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002670:	00000097          	auipc	ra,0x0
    80002674:	d70080e7          	jalr	-656(ra) # 800023e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
    80002678:	00006797          	auipc	a5,0x6
    8000267c:	3697b823          	sd	s1,880(a5) # 800089e8 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    80002680:	00048513          	mv	a0,s1
    80002684:	00000097          	auipc	ra,0x0
    80002688:	dac080e7          	jalr	-596(ra) # 80002430 <_ZN3PCB5startEv>
}
    8000268c:	01813083          	ld	ra,24(sp)
    80002690:	01013403          	ld	s0,16(sp)
    80002694:	00813483          	ld	s1,8(sp)
    80002698:	00013903          	ld	s2,0(sp)
    8000269c:	02010113          	addi	sp,sp,32
    800026a0:	00008067          	ret

00000000800026a4 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00813423          	sd	s0,8(sp)
    800026ac:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800026b0:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800026b4:	ffd50513          	addi	a0,a0,-3
}
    800026b8:	00153513          	seqz	a0,a0
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800026d8:	00006797          	auipc	a5,0x6
    800026dc:	30078793          	addi	a5,a5,768 # 800089d8 <_ZN3PCB7runningE>
    800026e0:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800026e4:	0007b783          	ld	a5,0(a5)
    800026e8:	00300713          	li	a4,3
    800026ec:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	d68080e7          	jalr	-664(ra) # 80002458 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800026f8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800026fc:	00002097          	auipc	ra,0x2
    80002700:	b34080e7          	jalr	-1228(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002704:	00813083          	ld	ra,8(sp)
    80002708:	00013403          	ld	s0,0(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00113423          	sd	ra,8(sp)
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002724:	00006797          	auipc	a5,0x6
    80002728:	2c07b623          	sd	zero,716(a5) # 800089f0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    8000272c:	00000097          	auipc	ra,0x0
    80002730:	d2c080e7          	jalr	-724(ra) # 80002458 <_ZN3PCB8dispatchEv>
}
    80002734:	00813083          	ld	ra,8(sp)
    80002738:	00013403          	ld	s0,0(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret

0000000080002744 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00113423          	sd	ra,8(sp)
    8000274c:	00813023          	sd	s0,0(sp)
    80002750:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002754:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002758:	00006717          	auipc	a4,0x6
    8000275c:	28070713          	addi	a4,a4,640 # 800089d8 <_ZN3PCB7runningE>
    80002760:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002764:	00073703          	ld	a4,0(a4)
    80002768:	00006697          	auipc	a3,0x6
    8000276c:	1c06b683          	ld	a3,448(a3) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002770:	0006b683          	ld	a3,0(a3)
    80002774:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002778:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    8000277c:	00001097          	auipc	ra,0x1
    80002780:	edc080e7          	jalr	-292(ra) # 80003658 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002784:	00000097          	auipc	ra,0x0
    80002788:	cd4080e7          	jalr	-812(ra) # 80002458 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    8000278c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002790:	00002097          	auipc	ra,0x2
    80002794:	aa0080e7          	jalr	-1376(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002798:	00813083          	ld	ra,8(sp)
    8000279c:	00013403          	ld	s0,0(sp)
    800027a0:	01010113          	addi	sp,sp,16
    800027a4:	00008067          	ret

00000000800027a8 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800027a8:	fd010113          	addi	sp,sp,-48
    800027ac:	02113423          	sd	ra,40(sp)
    800027b0:	02813023          	sd	s0,32(sp)
    800027b4:	00913c23          	sd	s1,24(sp)
    800027b8:	01213823          	sd	s2,16(sp)
    800027bc:	01313423          	sd	s3,8(sp)
    800027c0:	01413023          	sd	s4,0(sp)
    800027c4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800027c8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800027cc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800027d0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    800027d4:	06000513          	li	a0,96
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	d0c080e7          	jalr	-756(ra) # 800024e4 <_ZN3PCBnwEm>
    800027e0:	00050493          	mv	s1,a0
    800027e4:	02050063          	beqz	a0,80002804 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    800027e8:	00200713          	li	a4,2
    800027ec:	00006697          	auipc	a3,0x6
    800027f0:	20c6b683          	ld	a3,524(a3) # 800089f8 <_ZN3PCB10savedRegA4E>
    800027f4:	000a0613          	mv	a2,s4
    800027f8:	00098593          	mv	a1,s3
    800027fc:	00000097          	auipc	ra,0x0
    80002800:	be4080e7          	jalr	-1052(ra) # 800023e0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002804:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    80002808:	02048e63          	beqz	s1,80002844 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    8000280c:	00048513          	mv	a0,s1
    80002810:	00000097          	auipc	ra,0x0
    80002814:	c20080e7          	jalr	-992(ra) # 80002430 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002818:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    8000281c:	00002097          	auipc	ra,0x2
    80002820:	a14080e7          	jalr	-1516(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002824:	02813083          	ld	ra,40(sp)
    80002828:	02013403          	ld	s0,32(sp)
    8000282c:	01813483          	ld	s1,24(sp)
    80002830:	01013903          	ld	s2,16(sp)
    80002834:	00813983          	ld	s3,8(sp)
    80002838:	00013a03          	ld	s4,0(sp)
    8000283c:	03010113          	addi	sp,sp,48
    80002840:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002844:	00100513          	li	a0,1
    80002848:	fd5ff06f          	j	8000281c <_ZN3PCB19threadCreateHandlerEv+0x74>

000000008000284c <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	00813023          	sd	s0,0(sp)
    80002858:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000285c:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002860:	02050463          	beqz	a0,80002888 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002864:	00000097          	auipc	ra,0x0
    80002868:	bcc080e7          	jalr	-1076(ra) # 80002430 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    8000286c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002870:	00002097          	auipc	ra,0x2
    80002874:	9c0080e7          	jalr	-1600(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002878:	00813083          	ld	ra,8(sp)
    8000287c:	00013403          	ld	s0,0(sp)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002888:	00100513          	li	a0,1
    8000288c:	fe5ff06f          	j	80002870 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002890 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002890:	fd010113          	addi	sp,sp,-48
    80002894:	02113423          	sd	ra,40(sp)
    80002898:	02813023          	sd	s0,32(sp)
    8000289c:	00913c23          	sd	s1,24(sp)
    800028a0:	01213823          	sd	s2,16(sp)
    800028a4:	01313423          	sd	s3,8(sp)
    800028a8:	01413023          	sd	s4,0(sp)
    800028ac:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800028b0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800028b4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800028b8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    800028bc:	06000513          	li	a0,96
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	c24080e7          	jalr	-988(ra) # 800024e4 <_ZN3PCBnwEm>
    800028c8:	00050493          	mv	s1,a0
    800028cc:	02050063          	beqz	a0,800028ec <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    800028d0:	00200713          	li	a4,2
    800028d4:	00006697          	auipc	a3,0x6
    800028d8:	1246b683          	ld	a3,292(a3) # 800089f8 <_ZN3PCB10savedRegA4E>
    800028dc:	000a0613          	mv	a2,s4
    800028e0:	00098593          	mv	a1,s3
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	afc080e7          	jalr	-1284(ra) # 800023e0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028ec:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    800028f0:	02048863          	beqz	s1,80002920 <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    800028f4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028f8:	00002097          	auipc	ra,0x2
    800028fc:	938080e7          	jalr	-1736(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002900:	02813083          	ld	ra,40(sp)
    80002904:	02013403          	ld	s0,32(sp)
    80002908:	01813483          	ld	s1,24(sp)
    8000290c:	01013903          	ld	s2,16(sp)
    80002910:	00813983          	ld	s3,8(sp)
    80002914:	00013a03          	ld	s4,0(sp)
    80002918:	03010113          	addi	sp,sp,48
    8000291c:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002920:	00100513          	li	a0,1
    80002924:	fd5ff06f          	j	800028f8 <_ZN3PCB20threadMakePCBHandlerEv+0x68>

0000000080002928 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002928:	fe010113          	addi	sp,sp,-32
    8000292c:	00113c23          	sd	ra,24(sp)
    80002930:	00813823          	sd	s0,16(sp)
    80002934:	00913423          	sd	s1,8(sp)
    80002938:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000293c:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002940:	02048e63          	beqz	s1,8000297c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002944:	00048513          	mv	a0,s1
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	c08080e7          	jalr	-1016(ra) # 80002550 <_ZN3PCBD1Ev>
    80002950:	00048513          	mv	a0,s1
    80002954:	00000097          	auipc	ra,0x0
    80002958:	bc4080e7          	jalr	-1084(ra) # 80002518 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    8000295c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002960:	00002097          	auipc	ra,0x2
    80002964:	8d0080e7          	jalr	-1840(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002968:	01813083          	ld	ra,24(sp)
    8000296c:	01013403          	ld	s0,16(sp)
    80002970:	00813483          	ld	s1,8(sp)
    80002974:	02010113          	addi	sp,sp,32
    80002978:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    8000297c:	00100513          	li	a0,1
    80002980:	fe1ff06f          	j	80002960 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002984 <_Z12getBlockAddrm>:
    addBlocks(addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00813423          	sd	s0,8(sp)
    8000298c:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002990:	fffff7b7          	lui	a5,0xfffff
    80002994:	00f57533          	and	a0,a0,a5
    80002998:	00813403          	ld	s0,8(sp)
    8000299c:	01010113          	addi	sp,sp,16
    800029a0:	00008067          	ret

00000000800029a4 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    800029a4:	ff010113          	addi	sp,sp,-16
    800029a8:	00113423          	sd	ra,8(sp)
    800029ac:	00813023          	sd	s0,0(sp)
    800029b0:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	fd0080e7          	jalr	-48(ra) # 80002984 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    800029bc:	000017b7          	lui	a5,0x1
    800029c0:	00f50533          	add	a0,a0,a5
    800029c4:	00813083          	ld	ra,8(sp)
    800029c8:	00013403          	ld	s0,0(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00813423          	sd	s0,8(sp)
    800029dc:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    800029e0:	00000713          	li	a4,0
    size_t x = 1;
    800029e4:	00100793          	li	a5,1
    while(x <= num)
    800029e8:	00f56863          	bltu	a0,a5,800029f8 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    800029ec:	00170713          	addi	a4,a4,1
        x<<=1;
    800029f0:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    800029f4:	ff5ff06f          	j	800029e8 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    800029f8:	fff70513          	addi	a0,a4,-1
    800029fc:	00813403          	ld	s0,8(sp)
    80002a00:	01010113          	addi	sp,sp,16
    80002a04:	00008067          	ret

0000000080002a08 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002a08:	ff010113          	addi	sp,sp,-16
    80002a0c:	00813423          	sd	s0,8(sp)
    80002a10:	01010413          	addi	s0,sp,16
    80002a14:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002a18:	00000513          	li	a0,0
    size_t x = 1;
    80002a1c:	00100793          	li	a5,1
    while(x < num)
    80002a20:	00e7f863          	bgeu	a5,a4,80002a30 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002a24:	00150513          	addi	a0,a0,1
        x<<=1;
    80002a28:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002a2c:	ff5ff06f          	j	80002a20 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002a30:	00813403          	ld	s0,8(sp)
    80002a34:	01010113          	addi	sp,sp,16
    80002a38:	00008067          	ret

0000000080002a3c <_Z15addBlockToLevelPvm>:
    addBlockToLevel(addr, level);
}

//adds free block to level
void addBlockToLevel(void* addr, size_t level)
{
    80002a3c:	ff010113          	addi	sp,sp,-16
    80002a40:	00813423          	sd	s0,8(sp)
    80002a44:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002a48:	00053023          	sd	zero,0(a0)
    if(buddy->bucket[level].first == nullptr)
    80002a4c:	00006717          	auipc	a4,0x6
    80002a50:	fb473703          	ld	a4,-76(a4) # 80008a00 <_ZL5buddy>
    80002a54:	00258793          	addi	a5,a1,2
    80002a58:	00479793          	slli	a5,a5,0x4
    80002a5c:	00f707b3          	add	a5,a4,a5
    80002a60:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002a64:	02078463          	beqz	a5,80002a8c <_Z15addBlockToLevelPvm+0x50>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002a68:	00258593          	addi	a1,a1,2
    80002a6c:	00459593          	slli	a1,a1,0x4
    80002a70:	00b705b3          	add	a1,a4,a1
    80002a74:	0085b783          	ld	a5,8(a1)
    80002a78:	00a7b023          	sd	a0,0(a5)
        buddy->bucket[level].last = newBlock;
    80002a7c:	00a5b423          	sd	a0,8(a1)
    }
}
    80002a80:	00813403          	ld	s0,8(sp)
    80002a84:	01010113          	addi	sp,sp,16
    80002a88:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002a8c:	00258593          	addi	a1,a1,2
    80002a90:	00459793          	slli	a5,a1,0x4
    80002a94:	00f707b3          	add	a5,a4,a5
    80002a98:	00a7b423          	sd	a0,8(a5)
    80002a9c:	00a7b023          	sd	a0,0(a5)
    80002aa0:	fe1ff06f          	j	80002a80 <_Z15addBlockToLevelPvm+0x44>

0000000080002aa4 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002ab0:	000017b7          	lui	a5,0x1
    80002ab4:	00b795bb          	sllw	a1,a5,a1
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002ab8:	00006797          	auipc	a5,0x6
    80002abc:	f487b783          	ld	a5,-184(a5) # 80008a00 <_ZL5buddy>
    80002ac0:	0087b783          	ld	a5,8(a5)
    80002ac4:	40f507b3          	sub	a5,a0,a5
    if(diff & off)
    80002ac8:	00f5f7b3          	and	a5,a1,a5
    80002acc:	00078a63          	beqz	a5,80002ae0 <_Z17getBuddyBlockAddrPvm+0x3c>
        return (size_t)addr - diff;
    80002ad0:	40b50533          	sub	a0,a0,a1
    else
        return (size_t)addr + diff;
}
    80002ad4:	00813403          	ld	s0,8(sp)
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00008067          	ret
        return (size_t)addr + diff;
    80002ae0:	00b50533          	add	a0,a0,a1
    80002ae4:	ff1ff06f          	j	80002ad4 <_Z17getBuddyBlockAddrPvm+0x30>

0000000080002ae8 <_Z5splitPvmmb>:
{
    80002ae8:	fd010113          	addi	sp,sp,-48
    80002aec:	02113423          	sd	ra,40(sp)
    80002af0:	02813023          	sd	s0,32(sp)
    80002af4:	00913c23          	sd	s1,24(sp)
    80002af8:	01213823          	sd	s2,16(sp)
    80002afc:	01313423          	sd	s3,8(sp)
    80002b00:	03010413          	addi	s0,sp,48
    80002b04:	00050993          	mv	s3,a0
    if(!splitMore)
    80002b08:	06068263          	beqz	a3,80002b6c <_Z5splitPvmmb+0x84>
    80002b0c:	00058913          	mv	s2,a1
        if(currLevel == finalLevel)
    80002b10:	04b60063          	beq	a2,a1,80002b50 <_Z5splitPvmmb+0x68>
        size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80002b14:	fff60493          	addi	s1,a2,-1
    80002b18:	00048593          	mv	a1,s1
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	f88080e7          	jalr	-120(ra) # 80002aa4 <_Z17getBuddyBlockAddrPvm>
        split((void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002b24:	00000693          	li	a3,0
    80002b28:	00048613          	mv	a2,s1
    80002b2c:	00090593          	mv	a1,s2
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	fb8080e7          	jalr	-72(ra) # 80002ae8 <_Z5splitPvmmb>
        split(addr, finalLevel, currLevel - 1, true); // continue splitting
    80002b38:	00100693          	li	a3,1
    80002b3c:	00048613          	mv	a2,s1
    80002b40:	00090593          	mv	a1,s2
    80002b44:	00098513          	mv	a0,s3
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	fa0080e7          	jalr	-96(ra) # 80002ae8 <_Z5splitPvmmb>
}
    80002b50:	02813083          	ld	ra,40(sp)
    80002b54:	02013403          	ld	s0,32(sp)
    80002b58:	01813483          	ld	s1,24(sp)
    80002b5c:	01013903          	ld	s2,16(sp)
    80002b60:	00813983          	ld	s3,8(sp)
    80002b64:	03010113          	addi	sp,sp,48
    80002b68:	00008067          	ret
        addBlockToLevel(addr, currLevel);
    80002b6c:	00060593          	mv	a1,a2
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	ecc080e7          	jalr	-308(ra) # 80002a3c <_Z15addBlockToLevelPvm>
    80002b78:	fd9ff06f          	j	80002b50 <_Z5splitPvmmb+0x68>

0000000080002b7c <_Z11buddy_allocm>:
{
    80002b7c:	fe010113          	addi	sp,sp,-32
    80002b80:	00113c23          	sd	ra,24(sp)
    80002b84:	00813823          	sd	s0,16(sp)
    80002b88:	00913423          	sd	s1,8(sp)
    80002b8c:	01213023          	sd	s2,0(sp)
    80002b90:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(numOfBlocks);
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	e74080e7          	jalr	-396(ra) # 80002a08 <_Z11getDeg2Ceilm>
    80002b9c:	00050913          	mv	s2,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ba0:	00050613          	mv	a2,a0
    80002ba4:	00006717          	auipc	a4,0x6
    80002ba8:	e5c73703          	ld	a4,-420(a4) # 80008a00 <_ZL5buddy>
    80002bac:	01873783          	ld	a5,24(a4)
    80002bb0:	08c7e063          	bltu	a5,a2,80002c30 <_Z11buddy_allocm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002bb4:	00260793          	addi	a5,a2,2
    80002bb8:	00479793          	slli	a5,a5,0x4
    80002bbc:	00f707b3          	add	a5,a4,a5
    80002bc0:	0007b483          	ld	s1,0(a5)
    80002bc4:	00049663          	bnez	s1,80002bd0 <_Z11buddy_allocm+0x54>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002bc8:	00160613          	addi	a2,a2,1
    80002bcc:	fd9ff06f          	j	80002ba4 <_Z11buddy_allocm+0x28>
            buddy->bucket[i].first = ret->next;
    80002bd0:	0004b683          	ld	a3,0(s1)
    80002bd4:	00260793          	addi	a5,a2,2
    80002bd8:	00479793          	slli	a5,a5,0x4
    80002bdc:	00f707b3          	add	a5,a4,a5
    80002be0:	00d7b023          	sd	a3,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002be4:	02068c63          	beqz	a3,80002c1c <_Z11buddy_allocm+0xa0>
            split((void*)ret, level, i, true);
    80002be8:	00100693          	li	a3,1
    80002bec:	00090593          	mv	a1,s2
    80002bf0:	00048513          	mv	a0,s1
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	ef4080e7          	jalr	-268(ra) # 80002ae8 <_Z5splitPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002bfc:	00006797          	auipc	a5,0x6
    80002c00:	e047b783          	ld	a5,-508(a5) # 80008a00 <_ZL5buddy>
    80002c04:	00100513          	li	a0,1
    80002c08:	0125153b          	sllw	a0,a0,s2
    80002c0c:	0107b903          	ld	s2,16(a5)
    80002c10:	40a90933          	sub	s2,s2,a0
    80002c14:	0127b823          	sd	s2,16(a5)
            return ret;
    80002c18:	01c0006f          	j	80002c34 <_Z11buddy_allocm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002c1c:	00260793          	addi	a5,a2,2
    80002c20:	00479793          	slli	a5,a5,0x4
    80002c24:	00f70733          	add	a4,a4,a5
    80002c28:	00073423          	sd	zero,8(a4)
    80002c2c:	fbdff06f          	j	80002be8 <_Z11buddy_allocm+0x6c>
    return nullptr;
    80002c30:	00000493          	li	s1,0
}
    80002c34:	00048513          	mv	a0,s1
    80002c38:	01813083          	ld	ra,24(sp)
    80002c3c:	01013403          	ld	s0,16(sp)
    80002c40:	00813483          	ld	s1,8(sp)
    80002c44:	00013903          	ld	s2,0(sp)
    80002c48:	02010113          	addi	sp,sp,32
    80002c4c:	00008067          	ret

0000000080002c50 <_Z9addBlocksPvm>:
{
    80002c50:	fd010113          	addi	sp,sp,-48
    80002c54:	02113423          	sd	ra,40(sp)
    80002c58:	02813023          	sd	s0,32(sp)
    80002c5c:	00913c23          	sd	s1,24(sp)
    80002c60:	01213823          	sd	s2,16(sp)
    80002c64:	01313423          	sd	s3,8(sp)
    80002c68:	03010413          	addi	s0,sp,48
    80002c6c:	00050913          	mv	s2,a0
    80002c70:	00058493          	mv	s1,a1
    if(level == buddy->maxLevel)
    80002c74:	00006997          	auipc	s3,0x6
    80002c78:	d8c9b983          	ld	s3,-628(s3) # 80008a00 <_ZL5buddy>
    80002c7c:	0189b783          	ld	a5,24(s3)
    80002c80:	02b78a63          	beq	a5,a1,80002cb4 <_Z9addBlocksPvm+0x64>
    size_t buddyBlockAddr = getBuddyBlockAddr(addr,level);
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	e20080e7          	jalr	-480(ra) # 80002aa4 <_Z17getBuddyBlockAddrPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002c8c:	00248793          	addi	a5,s1,2
    80002c90:	00479793          	slli	a5,a5,0x4
    80002c94:	00f987b3          	add	a5,s3,a5
    80002c98:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002c9c:	00000713          	li	a4,0
    while(curr != nullptr)
    80002ca0:	0a078863          	beqz	a5,80002d50 <_Z9addBlocksPvm+0x100>
        if((size_t)curr == buddyBlockAddr)
    80002ca4:	00a78e63          	beq	a5,a0,80002cc0 <_Z9addBlocksPvm+0x70>
        prev = curr;
    80002ca8:	00078713          	mv	a4,a5
        curr = curr->next;
    80002cac:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002cb0:	ff1ff06f          	j	80002ca0 <_Z9addBlocksPvm+0x50>
        addBlockToLevel(addr, level);
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	d88080e7          	jalr	-632(ra) # 80002a3c <_Z15addBlockToLevelPvm>
        return;
    80002cbc:	0a40006f          	j	80002d60 <_Z9addBlocksPvm+0x110>
            if(prev != nullptr)
    80002cc0:	04070663          	beqz	a4,80002d0c <_Z9addBlocksPvm+0xbc>
                prev->next = curr->next;
    80002cc4:	0007b683          	ld	a3,0(a5)
    80002cc8:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002ccc:	00248693          	addi	a3,s1,2
    80002cd0:	00469693          	slli	a3,a3,0x4
    80002cd4:	00d986b3          	add	a3,s3,a3
    80002cd8:	0086b683          	ld	a3,8(a3)
    80002cdc:	00f68e63          	beq	a3,a5,80002cf8 <_Z9addBlocksPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(addr, level + 1); //merge two chunks
    80002ce0:	06a97063          	bgeu	s2,a0,80002d40 <_Z9addBlocksPvm+0xf0>
    80002ce4:	00148593          	addi	a1,s1,1
    80002ce8:	00090513          	mv	a0,s2
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	f64080e7          	jalr	-156(ra) # 80002c50 <_Z9addBlocksPvm>
    80002cf4:	06c0006f          	j	80002d60 <_Z9addBlocksPvm+0x110>
                    buddy->bucket[level].last = prev;
    80002cf8:	00248793          	addi	a5,s1,2
    80002cfc:	00479793          	slli	a5,a5,0x4
    80002d00:	00f989b3          	add	s3,s3,a5
    80002d04:	00e9b423          	sd	a4,8(s3)
    80002d08:	fd9ff06f          	j	80002ce0 <_Z9addBlocksPvm+0x90>
                if(curr->next == nullptr)
    80002d0c:	0007b783          	ld	a5,0(a5)
    80002d10:	00078c63          	beqz	a5,80002d28 <_Z9addBlocksPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002d14:	00248713          	addi	a4,s1,2
    80002d18:	00471713          	slli	a4,a4,0x4
    80002d1c:	00e989b3          	add	s3,s3,a4
    80002d20:	00f9b023          	sd	a5,0(s3)
    80002d24:	fbdff06f          	j	80002ce0 <_Z9addBlocksPvm+0x90>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002d28:	00248793          	addi	a5,s1,2
    80002d2c:	00479793          	slli	a5,a5,0x4
    80002d30:	00f989b3          	add	s3,s3,a5
    80002d34:	0009b423          	sd	zero,8(s3)
    80002d38:	0009b023          	sd	zero,0(s3)
    80002d3c:	fa5ff06f          	j	80002ce0 <_Z9addBlocksPvm+0x90>
            else addBlocks((void*)buddyBlockAddr, level + 1); //merge two chunks
    80002d40:	00148593          	addi	a1,s1,1
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	f0c080e7          	jalr	-244(ra) # 80002c50 <_Z9addBlocksPvm>
            return;
    80002d4c:	0140006f          	j	80002d60 <_Z9addBlocksPvm+0x110>
    addBlockToLevel(addr, level);
    80002d50:	00048593          	mv	a1,s1
    80002d54:	00090513          	mv	a0,s2
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	ce4080e7          	jalr	-796(ra) # 80002a3c <_Z15addBlockToLevelPvm>
}
    80002d60:	02813083          	ld	ra,40(sp)
    80002d64:	02013403          	ld	s0,32(sp)
    80002d68:	01813483          	ld	s1,24(sp)
    80002d6c:	01013903          	ld	s2,16(sp)
    80002d70:	00813983          	ld	s3,8(sp)
    80002d74:	03010113          	addi	sp,sp,48
    80002d78:	00008067          	ret

0000000080002d7c <_Z10buddy_initPvm>:
{
    80002d7c:	fd010113          	addi	sp,sp,-48
    80002d80:	02113423          	sd	ra,40(sp)
    80002d84:	02813023          	sd	s0,32(sp)
    80002d88:	00913c23          	sd	s1,24(sp)
    80002d8c:	01213823          	sd	s2,16(sp)
    80002d90:	01313423          	sd	s3,8(sp)
    80002d94:	03010413          	addi	s0,sp,48
    80002d98:	00058913          	mv	s2,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002d9c:	00050993          	mv	s3,a0
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	be4080e7          	jalr	-1052(ra) # 80002984 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002da8:	00a98a63          	beq	s3,a0,80002dbc <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	bf8080e7          	jalr	-1032(ra) # 800029a4 <_Z16getNextBlockAddrm>
    80002db4:	00050993          	mv	s3,a0
        numOfBlocks--; //have to discard one block
    80002db8:	fff90913          	addi	s2,s2,-1
    numOfBlocks--; // take one block for buddy metadata
    80002dbc:	fff90913          	addi	s2,s2,-1
    buddy = (buddyAllocator*)buddyAddr;
    80002dc0:	00098493          	mv	s1,s3
    80002dc4:	00006797          	auipc	a5,0x6
    80002dc8:	c337be23          	sd	s3,-964(a5) # 80008a00 <_ZL5buddy>
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002dcc:	00098513          	mv	a0,s3
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	bd4080e7          	jalr	-1068(ra) # 800029a4 <_Z16getNextBlockAddrm>
    80002dd8:	00a9b423          	sd	a0,8(s3)
    buddy->numOfBlocks = numOfBlocks;
    80002ddc:	0129b023          	sd	s2,0(s3)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002de0:	0129b823          	sd	s2,16(s3)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002de4:	00090513          	mv	a0,s2
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	bec080e7          	jalr	-1044(ra) # 800029d4 <_Z12getDeg2Floorm>
    80002df0:	00a9bc23          	sd	a0,24(s3)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002df4:	00000713          	li	a4,0
    80002df8:	0184b783          	ld	a5,24(s1)
    80002dfc:	02e7e063          	bltu	a5,a4,80002e1c <_Z10buddy_initPvm+0xa0>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002e00:	00270793          	addi	a5,a4,2
    80002e04:	00479793          	slli	a5,a5,0x4
    80002e08:	00f487b3          	add	a5,s1,a5
    80002e0c:	0007b423          	sd	zero,8(a5)
    80002e10:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002e14:	00170713          	addi	a4,a4,1
    80002e18:	fe1ff06f          	j	80002df8 <_Z10buddy_initPvm+0x7c>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002e1c:	00000493          	li	s1,0
    80002e20:	0324f663          	bgeu	s1,s2,80002e4c <_Z10buddy_initPvm+0xd0>
        addBlocks((block*)buddy->startAddr + i, 0);
    80002e24:	00006797          	auipc	a5,0x6
    80002e28:	bdc7b783          	ld	a5,-1060(a5) # 80008a00 <_ZL5buddy>
    80002e2c:	0087b503          	ld	a0,8(a5)
    80002e30:	00c49793          	slli	a5,s1,0xc
    80002e34:	00000593          	li	a1,0
    80002e38:	00f50533          	add	a0,a0,a5
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	e14080e7          	jalr	-492(ra) # 80002c50 <_Z9addBlocksPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002e44:	00148493          	addi	s1,s1,1
    80002e48:	fd9ff06f          	j	80002e20 <_Z10buddy_initPvm+0xa4>
}
    80002e4c:	00006517          	auipc	a0,0x6
    80002e50:	bb453503          	ld	a0,-1100(a0) # 80008a00 <_ZL5buddy>
    80002e54:	02813083          	ld	ra,40(sp)
    80002e58:	02013403          	ld	s0,32(sp)
    80002e5c:	01813483          	ld	s1,24(sp)
    80002e60:	01013903          	ld	s2,16(sp)
    80002e64:	00813983          	ld	s3,8(sp)
    80002e68:	03010113          	addi	sp,sp,48
    80002e6c:	00008067          	ret

0000000080002e70 <_Z10buddy_freePvm>:
{
    80002e70:	fe010113          	addi	sp,sp,-32
    80002e74:	00113c23          	sd	ra,24(sp)
    80002e78:	00813823          	sd	s0,16(sp)
    80002e7c:	00913423          	sd	s1,8(sp)
    80002e80:	01213023          	sd	s2,0(sp)
    80002e84:	02010413          	addi	s0,sp,32
    80002e88:	00050913          	mv	s2,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e8c:	00058513          	mv	a0,a1
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	b78080e7          	jalr	-1160(ra) # 80002a08 <_Z11getDeg2Ceilm>
    80002e98:	00050493          	mv	s1,a0
    addBlocks(addr, level); //adds free blocks
    80002e9c:	00050593          	mv	a1,a0
    80002ea0:	00090513          	mv	a0,s2
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	dac080e7          	jalr	-596(ra) # 80002c50 <_Z9addBlocksPvm>
    buddy->numOfFreeBlocks += (1 << level);
    80002eac:	00006797          	auipc	a5,0x6
    80002eb0:	b547b783          	ld	a5,-1196(a5) # 80008a00 <_ZL5buddy>
    80002eb4:	00100513          	li	a0,1
    80002eb8:	0095153b          	sllw	a0,a0,s1
    80002ebc:	0107b483          	ld	s1,16(a5)
    80002ec0:	00a484b3          	add	s1,s1,a0
    80002ec4:	0097b823          	sd	s1,16(a5)
}
    80002ec8:	01813083          	ld	ra,24(sp)
    80002ecc:	01013403          	ld	s0,16(sp)
    80002ed0:	00813483          	ld	s1,8(sp)
    80002ed4:	00013903          	ld	s2,0(sp)
    80002ed8:	02010113          	addi	sp,sp,32
    80002edc:	00008067          	ret

0000000080002ee0 <_Z14printBuddyInfov>:

void printBuddyInfo()
{
    80002ee0:	fe010113          	addi	sp,sp,-32
    80002ee4:	00113c23          	sd	ra,24(sp)
    80002ee8:	00813823          	sd	s0,16(sp)
    80002eec:	00913423          	sd	s1,8(sp)
    80002ef0:	01213023          	sd	s2,0(sp)
    80002ef4:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80002ef8:	00005517          	auipc	a0,0x5
    80002efc:	35850513          	addi	a0,a0,856 # 80008250 <CONSOLE_STATUS+0x240>
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	61c080e7          	jalr	1564(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    80002f08:	00006497          	auipc	s1,0x6
    80002f0c:	af848493          	addi	s1,s1,-1288 # 80008a00 <_ZL5buddy>
    80002f10:	0004b783          	ld	a5,0(s1)
    80002f14:	01000613          	li	a2,16
    80002f18:	0087b583          	ld	a1,8(a5)
    80002f1c:	00005517          	auipc	a0,0x5
    80002f20:	36c50513          	addi	a0,a0,876 # 80008288 <CONSOLE_STATUS+0x278>
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	6d0080e7          	jalr	1744(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80002f2c:	0004b783          	ld	a5,0(s1)
    80002f30:	00a00613          	li	a2,10
    80002f34:	0007b583          	ld	a1,0(a5)
    80002f38:	00005517          	auipc	a0,0x5
    80002f3c:	36850513          	addi	a0,a0,872 # 800082a0 <CONSOLE_STATUS+0x290>
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	6b4080e7          	jalr	1716(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80002f48:	0004b783          	ld	a5,0(s1)
    80002f4c:	00a00613          	li	a2,10
    80002f50:	0107b583          	ld	a1,16(a5)
    80002f54:	00005517          	auipc	a0,0x5
    80002f58:	36450513          	addi	a0,a0,868 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	698080e7          	jalr	1688(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80002f64:	0004b783          	ld	a5,0(s1)
    80002f68:	0187a903          	lw	s2,24(a5)
    80002f6c:	0080006f          	j	80002f74 <_Z14printBuddyInfov+0x94>
    80002f70:	fff9091b          	addiw	s2,s2,-1
    80002f74:	06094a63          	bltz	s2,80002fe8 <_Z14printBuddyInfov+0x108>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80002f78:	00a00613          	li	a2,10
    80002f7c:	00090593          	mv	a1,s2
    80002f80:	00005517          	auipc	a0,0x5
    80002f84:	35850513          	addi	a0,a0,856 # 800082d8 <CONSOLE_STATUS+0x2c8>
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	66c080e7          	jalr	1644(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    80002f90:	00005517          	auipc	a0,0x5
    80002f94:	35050513          	addi	a0,a0,848 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	584080e7          	jalr	1412(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80002fa0:	00290793          	addi	a5,s2,2
    80002fa4:	00479713          	slli	a4,a5,0x4
    80002fa8:	00006797          	auipc	a5,0x6
    80002fac:	a587b783          	ld	a5,-1448(a5) # 80008a00 <_ZL5buddy>
    80002fb0:	00e787b3          	add	a5,a5,a4
    80002fb4:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80002fb8:	fa048ce3          	beqz	s1,80002f70 <_Z14printBuddyInfov+0x90>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    80002fbc:	00000613          	li	a2,0
    80002fc0:	01000593          	li	a1,16
    80002fc4:	00048513          	mv	a0,s1
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	598080e7          	jalr	1432(ra) # 80003560 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80002fd0:	00005517          	auipc	a0,0x5
    80002fd4:	1a850513          	addi	a0,a0,424 # 80008178 <CONSOLE_STATUS+0x168>
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	544080e7          	jalr	1348(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80002fe0:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80002fe4:	fd5ff06f          	j	80002fb8 <_Z14printBuddyInfov+0xd8>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80002fe8:	00005517          	auipc	a0,0x5
    80002fec:	31850513          	addi	a0,a0,792 # 80008300 <CONSOLE_STATUS+0x2f0>
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	52c080e7          	jalr	1324(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
}
    80002ff8:	01813083          	ld	ra,24(sp)
    80002ffc:	01013403          	ld	s0,16(sp)
    80003000:	00813483          	ld	s1,8(sp)
    80003004:	00013903          	ld	s2,0(sp)
    80003008:	02010113          	addi	sp,sp,32
    8000300c:	00008067          	ret

0000000080003010 <_Z8getBuddyv>:

void* getBuddy()
{
    80003010:	ff010113          	addi	sp,sp,-16
    80003014:	00813423          	sd	s0,8(sp)
    80003018:	01010413          	addi	s0,sp,16
    return (void*)buddy;
    8000301c:	00006517          	auipc	a0,0x6
    80003020:	9e453503          	ld	a0,-1564(a0) # 80008a00 <_ZL5buddy>
    80003024:	00813403          	ld	s0,8(sp)
    80003028:	01010113          	addi	sp,sp,16
    8000302c:	00008067          	ret

0000000080003030 <_ZN8KConsole10initializeEv>:
char* KConsole::outputBuffer = nullptr;
uint64 KConsole::pendingPutc = 0;
bool KConsole::finished = false;

void KConsole::initialize()
{
    80003030:	fe010113          	addi	sp,sp,-32
    80003034:	00113c23          	sd	ra,24(sp)
    80003038:	00813823          	sd	s0,16(sp)
    8000303c:	00913423          	sd	s1,8(sp)
    80003040:	01213023          	sd	s2,0(sp)
    80003044:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003048:	01800513          	li	a0,24
    8000304c:	00002097          	auipc	ra,0x2
    80003050:	28c080e7          	jalr	652(ra) # 800052d8 <_ZN10KSemaphorenwEm>
    80003054:	00050493          	mv	s1,a0
    80003058:	00050863          	beqz	a0,80003068 <_ZN8KConsole10initializeEv+0x38>
    8000305c:	00000593          	li	a1,0
    80003060:	00002097          	auipc	ra,0x2
    80003064:	014080e7          	jalr	20(ra) # 80005074 <_ZN10KSemaphoreC1Ei>
    80003068:	00006797          	auipc	a5,0x6
    8000306c:	9a97b023          	sd	s1,-1632(a5) # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003070:	01800513          	li	a0,24
    80003074:	00002097          	auipc	ra,0x2
    80003078:	264080e7          	jalr	612(ra) # 800052d8 <_ZN10KSemaphorenwEm>
    8000307c:	00050493          	mv	s1,a0
    80003080:	00050863          	beqz	a0,80003090 <_ZN8KConsole10initializeEv+0x60>
    80003084:	00000593          	li	a1,0
    80003088:	00002097          	auipc	ra,0x2
    8000308c:	fec080e7          	jalr	-20(ra) # 80005074 <_ZN10KSemaphoreC1Ei>
    80003090:	00006917          	auipc	s2,0x6
    80003094:	97890913          	addi	s2,s2,-1672 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    80003098:	00993423          	sd	s1,8(s2)
    inputBuffer = (char*)kmalloc(bufferSize);
    8000309c:	00004537          	lui	a0,0x4
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	010080e7          	jalr	16(ra) # 800020b0 <_Z7kmallocm>
    800030a8:	00a93823          	sd	a0,16(s2)
    outputBuffer = (char*)kmalloc(bufferSize);
    800030ac:	00004537          	lui	a0,0x4
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	000080e7          	jalr	ra # 800020b0 <_Z7kmallocm>
    800030b8:	00a93c23          	sd	a0,24(s2)
}
    800030bc:	01813083          	ld	ra,24(sp)
    800030c0:	01013403          	ld	s0,16(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	00013903          	ld	s2,0(sp)
    800030cc:	02010113          	addi	sp,sp,32
    800030d0:	00008067          	ret
    800030d4:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	2ac080e7          	jalr	684(ra) # 80005388 <_ZN10KSemaphoredlEPv>
    800030e4:	00090513          	mv	a0,s2
    800030e8:	00007097          	auipc	ra,0x7
    800030ec:	aa0080e7          	jalr	-1376(ra) # 80009b88 <_Unwind_Resume>
    800030f0:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    800030f4:	00048513          	mv	a0,s1
    800030f8:	00002097          	auipc	ra,0x2
    800030fc:	290080e7          	jalr	656(ra) # 80005388 <_ZN10KSemaphoredlEPv>
    80003100:	00090513          	mv	a0,s2
    80003104:	00007097          	auipc	ra,0x7
    80003108:	a84080e7          	jalr	-1404(ra) # 80009b88 <_Unwind_Resume>

000000008000310c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    8000310c:	00006697          	auipc	a3,0x6
    80003110:	8fc68693          	addi	a3,a3,-1796 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    80003114:	0206b603          	ld	a2,32(a3)
    80003118:	00160793          	addi	a5,a2,1
    8000311c:	00004737          	lui	a4,0x4
    80003120:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003124:	00e7f7b3          	and	a5,a5,a4
    80003128:	0286b703          	ld	a4,40(a3)
    8000312c:	04e78c63          	beq	a5,a4,80003184 <_ZN8KConsole17putCharacterInputEc+0x78>
{
    80003130:	ff010113          	addi	sp,sp,-16
    80003134:	00113423          	sd	ra,8(sp)
    80003138:	00813023          	sd	s0,0(sp)
    8000313c:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80003140:	00068713          	mv	a4,a3
    80003144:	0106b783          	ld	a5,16(a3)
    80003148:	00c78633          	add	a2,a5,a2
    8000314c:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80003150:	0206b783          	ld	a5,32(a3)
    80003154:	00178793          	addi	a5,a5,1
    80003158:	000046b7          	lui	a3,0x4
    8000315c:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    80003160:	00d7f7b3          	and	a5,a5,a3
    80003164:	02f73023          	sd	a5,32(a4)
    hasCharactersInput->signal();
    80003168:	00073503          	ld	a0,0(a4)
    8000316c:	00002097          	auipc	ra,0x2
    80003170:	124080e7          	jalr	292(ra) # 80005290 <_ZN10KSemaphore6signalEv>
}
    80003174:	00813083          	ld	ra,8(sp)
    80003178:	00013403          	ld	s0,0(sp)
    8000317c:	01010113          	addi	sp,sp,16
    80003180:	00008067          	ret
    80003184:	00008067          	ret

0000000080003188 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003188:	00005797          	auipc	a5,0x5
    8000318c:	7507b783          	ld	a5,1872(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003190:	0007b783          	ld	a5,0(a5)
    80003194:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003198:	0017f793          	andi	a5,a5,1
    8000319c:	02078063          	beqz	a5,800031bc <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    800031a0:	00005797          	auipc	a5,0x5
    800031a4:	7707b783          	ld	a5,1904(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x48>
    800031a8:	0007b783          	ld	a5,0(a5)
    800031ac:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    800031b0:	00006797          	auipc	a5,0x6
    800031b4:	8887b783          	ld	a5,-1912(a5) # 80008a38 <_ZN8KConsole11pendingGetcE>
    800031b8:	00079463          	bnez	a5,800031c0 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    800031bc:	00008067          	ret
{
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00113423          	sd	ra,8(sp)
    800031c8:	00813023          	sd	s0,0(sp)
    800031cc:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    800031d0:	fff78793          	addi	a5,a5,-1
    800031d4:	00006717          	auipc	a4,0x6
    800031d8:	86f73223          	sd	a5,-1948(a4) # 80008a38 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    800031dc:	00000097          	auipc	ra,0x0
    800031e0:	f30080e7          	jalr	-208(ra) # 8000310c <_ZN8KConsole17putCharacterInputEc>
}
    800031e4:	00813083          	ld	ra,8(sp)
    800031e8:	00013403          	ld	s0,0(sp)
    800031ec:	01010113          	addi	sp,sp,16
    800031f0:	00008067          	ret

00000000800031f4 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    800031f4:	fe010113          	addi	sp,sp,-32
    800031f8:	00113c23          	sd	ra,24(sp)
    800031fc:	00813823          	sd	s0,16(sp)
    80003200:	00913423          	sd	s1,8(sp)
    80003204:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003208:	00006497          	auipc	s1,0x6
    8000320c:	80048493          	addi	s1,s1,-2048 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    80003210:	0004b503          	ld	a0,0(s1)
    80003214:	00002097          	auipc	ra,0x2
    80003218:	f04080e7          	jalr	-252(ra) # 80005118 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    8000321c:	0284b783          	ld	a5,40(s1)
    80003220:	0204b703          	ld	a4,32(s1)
    80003224:	02e78c63          	beq	a5,a4,8000325c <_ZN8KConsole17getCharacterInputEv+0x68>
        return -1;
    char c = inputBuffer[inputHead];
    80003228:	0104b703          	ld	a4,16(s1)
    8000322c:	00f70733          	add	a4,a4,a5
    80003230:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80003234:	00178793          	addi	a5,a5,1
    80003238:	00004737          	lui	a4,0x4
    8000323c:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003240:	00e7f7b3          	and	a5,a5,a4
    80003244:	02f4b423          	sd	a5,40(s1)
    return c;
}
    80003248:	01813083          	ld	ra,24(sp)
    8000324c:	01013403          	ld	s0,16(sp)
    80003250:	00813483          	ld	s1,8(sp)
    80003254:	02010113          	addi	sp,sp,32
    80003258:	00008067          	ret
        return -1;
    8000325c:	0ff00513          	li	a0,255
    80003260:	fe9ff06f          	j	80003248 <_ZN8KConsole17getCharacterInputEv+0x54>

0000000080003264 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80003264:	00005697          	auipc	a3,0x5
    80003268:	7a468693          	addi	a3,a3,1956 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    8000326c:	0386b603          	ld	a2,56(a3)
    80003270:	00160793          	addi	a5,a2,1
    80003274:	00004737          	lui	a4,0x4
    80003278:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    8000327c:	00e7f7b3          	and	a5,a5,a4
    80003280:	0406b703          	ld	a4,64(a3)
    80003284:	06e78263          	beq	a5,a4,800032e8 <_ZN8KConsole18putCharacterOutputEc+0x84>
{
    80003288:	ff010113          	addi	sp,sp,-16
    8000328c:	00113423          	sd	ra,8(sp)
    80003290:	00813023          	sd	s0,0(sp)
    80003294:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003298:	00068793          	mv	a5,a3
    8000329c:	0486b703          	ld	a4,72(a3)
    800032a0:	00170713          	addi	a4,a4,1
    800032a4:	04e6b423          	sd	a4,72(a3)
    outputBuffer[outputTail] = c;
    800032a8:	0186b703          	ld	a4,24(a3)
    800032ac:	00c70633          	add	a2,a4,a2
    800032b0:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    800032b4:	0386b703          	ld	a4,56(a3)
    800032b8:	00170713          	addi	a4,a4,1
    800032bc:	000046b7          	lui	a3,0x4
    800032c0:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    800032c4:	00d77733          	and	a4,a4,a3
    800032c8:	02e7bc23          	sd	a4,56(a5)
    hasCharactersOutput->signal();
    800032cc:	0087b503          	ld	a0,8(a5)
    800032d0:	00002097          	auipc	ra,0x2
    800032d4:	fc0080e7          	jalr	-64(ra) # 80005290 <_ZN10KSemaphore6signalEv>
}
    800032d8:	00813083          	ld	ra,8(sp)
    800032dc:	00013403          	ld	s0,0(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret
    800032e8:	00008067          	ret

00000000800032ec <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003300:	00005497          	auipc	s1,0x5
    80003304:	70848493          	addi	s1,s1,1800 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    80003308:	0084b503          	ld	a0,8(s1)
    8000330c:	00002097          	auipc	ra,0x2
    80003310:	e0c080e7          	jalr	-500(ra) # 80005118 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003314:	0404b783          	ld	a5,64(s1)
    80003318:	0384b703          	ld	a4,56(s1)
    8000331c:	02e78c63          	beq	a5,a4,80003354 <_ZN8KConsole18getCharacterOutputEv+0x68>
        return -1;
    char c = outputBuffer[outputHead];
    80003320:	0184b703          	ld	a4,24(s1)
    80003324:	00f70733          	add	a4,a4,a5
    80003328:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    8000332c:	00178793          	addi	a5,a5,1
    80003330:	00004737          	lui	a4,0x4
    80003334:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003338:	00e7f7b3          	and	a5,a5,a4
    8000333c:	04f4b023          	sd	a5,64(s1)
    return c;
}
    80003340:	01813083          	ld	ra,24(sp)
    80003344:	01013403          	ld	s0,16(sp)
    80003348:	00813483          	ld	s1,8(sp)
    8000334c:	02010113          	addi	sp,sp,32
    80003350:	00008067          	ret
        return -1;
    80003354:	0ff00513          	li	a0,255
    80003358:	fe9ff06f          	j	80003340 <_ZN8KConsole18getCharacterOutputEv+0x54>

000000008000335c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    8000335c:	ff010113          	addi	sp,sp,-16
    80003360:	00113423          	sd	ra,8(sp)
    80003364:	00813023          	sd	s0,0(sp)
    80003368:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    8000336c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80003370:	0ff57513          	andi	a0,a0,255
    80003374:	00000097          	auipc	ra,0x0
    80003378:	ef0080e7          	jalr	-272(ra) # 80003264 <_ZN8KConsole18putCharacterOutputEc>
}
    8000337c:	00813083          	ld	ra,8(sp)
    80003380:	00013403          	ld	s0,0(sp)
    80003384:	01010113          	addi	sp,sp,16
    80003388:	00008067          	ret

000000008000338c <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    8000338c:	fe010113          	addi	sp,sp,-32
    80003390:	00113c23          	sd	ra,24(sp)
    80003394:	00813823          	sd	s0,16(sp)
    80003398:	00913423          	sd	s1,8(sp)
    8000339c:	02010413          	addi	s0,sp,32
    pendingGetc++;
    800033a0:	00005717          	auipc	a4,0x5
    800033a4:	66870713          	addi	a4,a4,1640 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    800033a8:	03073783          	ld	a5,48(a4)
    800033ac:	00178793          	addi	a5,a5,1
    800033b0:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	e40080e7          	jalr	-448(ra) # 800031f4 <_ZN8KConsole17getCharacterInputEv>
    800033bc:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    800033c0:	01b00793          	li	a5,27
    800033c4:	02f51663          	bne	a0,a5,800033f0 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    800033c8:	00d00793          	li	a5,13
    800033cc:	02f48863          	beq	s1,a5,800033fc <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800033d0:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    800033d4:	00001097          	auipc	ra,0x1
    800033d8:	e5c080e7          	jalr	-420(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    800033dc:	01813083          	ld	ra,24(sp)
    800033e0:	01013403          	ld	s0,16(sp)
    800033e4:	00813483          	ld	s1,8(sp)
    800033e8:	02010113          	addi	sp,sp,32
    800033ec:	00008067          	ret
        putCharacterOutput(ch);
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	e74080e7          	jalr	-396(ra) # 80003264 <_ZN8KConsole18putCharacterOutputEc>
    800033f8:	fd1ff06f          	j	800033c8 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    800033fc:	00d00513          	li	a0,13
    80003400:	00000097          	auipc	ra,0x0
    80003404:	e64080e7          	jalr	-412(ra) # 80003264 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003408:	00a00513          	li	a0,10
    8000340c:	00000097          	auipc	ra,0x0
    80003410:	e58080e7          	jalr	-424(ra) # 80003264 <_ZN8KConsole18putCharacterOutputEc>
    80003414:	fbdff06f          	j	800033d0 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003418 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00813423          	sd	s0,8(sp)
    80003420:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003424:	00005517          	auipc	a0,0x5
    80003428:	62c53503          	ld	a0,1580(a0) # 80008a50 <_ZN8KConsole11pendingPutcE>
    8000342c:	00153513          	seqz	a0,a0
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    8000343c:	fe010113          	addi	sp,sp,-32
    80003440:	00113c23          	sd	ra,24(sp)
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	02010413          	addi	s0,sp,32
    8000344c:	0180006f          	j	80003464 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit_kernel();
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	e30080e7          	jalr	-464(ra) # 80001280 <_Z18thread_exit_kernelv>
    80003458:	0340006f          	j	8000348c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch_kernel();
    8000345c:	ffffe097          	auipc	ra,0xffffe
    80003460:	ddc080e7          	jalr	-548(ra) # 80001238 <_Z22thread_dispatch_kernelv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003464:	00005797          	auipc	a5,0x5
    80003468:	4ec7b783          	ld	a5,1260(a5) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000346c:	0007c783          	lbu	a5,0(a5)
    80003470:	00078e63          	beqz	a5,8000348c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003474:	00000097          	auipc	ra,0x0
    80003478:	fa4080e7          	jalr	-92(ra) # 80003418 <_ZN8KConsole17outputBufferEmptyEv>
    8000347c:	00050863          	beqz	a0,8000348c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003480:	00005797          	auipc	a5,0x5
    80003484:	5b87b783          	ld	a5,1464(a5) # 80008a38 <_ZN8KConsole11pendingGetcE>
    80003488:	fc0784e3          	beqz	a5,80003450 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    8000348c:	00005797          	auipc	a5,0x5
    80003490:	44c7b783          	ld	a5,1100(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003494:	0007b783          	ld	a5,0(a5)
    80003498:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    8000349c:	0207f793          	andi	a5,a5,32
    800034a0:	fa078ee3          	beqz	a5,8000345c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    800034a4:	00005797          	auipc	a5,0x5
    800034a8:	5ac7b783          	ld	a5,1452(a5) # 80008a50 <_ZN8KConsole11pendingPutcE>
    800034ac:	fa0788e3          	beqz	a5,8000345c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	da8080e7          	jalr	-600(ra) # 80001258 <_Z20sysCallGetCharOutputv>
    800034b8:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800034bc:	00005717          	auipc	a4,0x5
    800034c0:	54c70713          	addi	a4,a4,1356 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    800034c4:	04873783          	ld	a5,72(a4)
    800034c8:	fff78793          	addi	a5,a5,-1
    800034cc:	04f73423          	sd	a5,72(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    800034d0:	00005797          	auipc	a5,0x5
    800034d4:	4007b783          	ld	a5,1024(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800034d8:	0007b783          	ld	a5,0(a5)
    800034dc:	fef44703          	lbu	a4,-17(s0)
    800034e0:	00e78023          	sb	a4,0(a5)
    800034e4:	f81ff06f          	j	80003464 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

00000000800034e8 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00113423          	sd	ra,8(sp)
    800034f0:	00813023          	sd	s0,0(sp)
    800034f4:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	df4080e7          	jalr	-524(ra) # 800032ec <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003500:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003504:	00001097          	auipc	ra,0x1
    80003508:	d2c080e7          	jalr	-724(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000350c:	00813083          	ld	ra,8(sp)
    80003510:	00013403          	ld	s0,0(sp)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret

000000008000351c <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    8000351c:	fe010113          	addi	sp,sp,-32
    80003520:	00113c23          	sd	ra,24(sp)
    80003524:	00813823          	sd	s0,16(sp)
    80003528:	00913423          	sd	s1,8(sp)
    8000352c:	02010413          	addi	s0,sp,32
    80003530:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003534:	0004c503          	lbu	a0,0(s1)
    80003538:	00050a63          	beqz	a0,8000354c <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    8000353c:	00000097          	auipc	ra,0x0
    80003540:	d28080e7          	jalr	-728(ra) # 80003264 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003544:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003548:	fedff06f          	j	80003534 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    8000354c:	01813083          	ld	ra,24(sp)
    80003550:	01013403          	ld	s0,16(sp)
    80003554:	00813483          	ld	s1,8(sp)
    80003558:	02010113          	addi	sp,sp,32
    8000355c:	00008067          	ret

0000000080003560 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    80003560:	fb010113          	addi	sp,sp,-80
    80003564:	04113423          	sd	ra,72(sp)
    80003568:	04813023          	sd	s0,64(sp)
    8000356c:	02913c23          	sd	s1,56(sp)
    80003570:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80003574:	00005797          	auipc	a5,0x5
    80003578:	dcc78793          	addi	a5,a5,-564 # 80008340 <CONSOLE_STATUS+0x330>
    8000357c:	0007b703          	ld	a4,0(a5)
    80003580:	fce43423          	sd	a4,-56(s0)
    80003584:	0087b703          	ld	a4,8(a5)
    80003588:	fce43823          	sd	a4,-48(s0)
    8000358c:	0107c783          	lbu	a5,16(a5)
    80003590:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003594:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003598:	02b57733          	remu	a4,a0,a1
    8000359c:	fe040693          	addi	a3,s0,-32
    800035a0:	00e68733          	add	a4,a3,a4
    800035a4:	fe874703          	lbu	a4,-24(a4)
    800035a8:	009687b3          	add	a5,a3,s1
    800035ac:	0014849b          	addiw	s1,s1,1
    800035b0:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    800035b4:	00050793          	mv	a5,a0
    800035b8:	02b55533          	divu	a0,a0,a1
    800035bc:	fcb7fee3          	bgeu	a5,a1,80003598 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    800035c0:	fff4849b          	addiw	s1,s1,-1
    800035c4:	0004ce63          	bltz	s1,800035e0 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    800035c8:	fe040793          	addi	a5,s0,-32
    800035cc:	009787b3          	add	a5,a5,s1
    800035d0:	fd87c503          	lbu	a0,-40(a5)
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	c90080e7          	jalr	-880(ra) # 80003264 <_ZN8KConsole18putCharacterOutputEc>
    800035dc:	fe5ff06f          	j	800035c0 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    800035e0:	04813083          	ld	ra,72(sp)
    800035e4:	04013403          	ld	s0,64(sp)
    800035e8:	03813483          	ld	s1,56(sp)
    800035ec:	05010113          	addi	sp,sp,80
    800035f0:	00008067          	ret

00000000800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    800035f4:	fe010113          	addi	sp,sp,-32
    800035f8:	00113c23          	sd	ra,24(sp)
    800035fc:	00813823          	sd	s0,16(sp)
    80003600:	00913423          	sd	s1,8(sp)
    80003604:	01213023          	sd	s2,0(sp)
    80003608:	02010413          	addi	s0,sp,32
    8000360c:	00058493          	mv	s1,a1
    80003610:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003614:	00000097          	auipc	ra,0x0
    80003618:	f08080e7          	jalr	-248(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    8000361c:	00000613          	li	a2,0
    80003620:	00090593          	mv	a1,s2
    80003624:	00048513          	mv	a0,s1
    80003628:	00000097          	auipc	ra,0x0
    8000362c:	f38080e7          	jalr	-200(ra) # 80003560 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    80003630:	00005517          	auipc	a0,0x5
    80003634:	b4850513          	addi	a0,a0,-1208 # 80008178 <CONSOLE_STATUS+0x168>
    80003638:	00000097          	auipc	ra,0x0
    8000363c:	ee4080e7          	jalr	-284(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
}
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	00013903          	ld	s2,0(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00813423          	sd	s0,8(sp)
    80003660:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003664:	00005797          	auipc	a5,0x5
    80003668:	2fc7b783          	ld	a5,764(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    8000366c:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003670:	00500793          	li	a5,5
    80003674:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003678:	00005797          	auipc	a5,0x5
    8000367c:	3e87b783          	ld	a5,1000(a5) # 80008a60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003680:	00000593          	li	a1,0
    while(curr != 0)
    80003684:	02078063          	beqz	a5,800036a4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003688:	02063683          	ld	a3,32(a2)
    8000368c:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003690:	00e6e863          	bltu	a3,a4,800036a0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003694:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003698:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000369c:	fe9ff06f          	j	80003684 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800036a0:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800036a4:	00058a63          	beqz	a1,800036b8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800036a8:	00c5b423          	sd	a2,8(a1)
}
    800036ac:	00813403          	ld	s0,8(sp)
    800036b0:	01010113          	addi	sp,sp,16
    800036b4:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800036b8:	00005797          	auipc	a5,0x5
    800036bc:	3ac7b423          	sd	a2,936(a5) # 80008a60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800036c0:	fedff06f          	j	800036ac <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800036c4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    800036c4:	00005517          	auipc	a0,0x5
    800036c8:	39c53503          	ld	a0,924(a0) # 80008a60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800036cc:	06050e63          	beqz	a0,80003748 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800036d0:	06050c63          	beqz	a0,80003748 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800036d4:	02053783          	ld	a5,32(a0)
    800036d8:	00005717          	auipc	a4,0x5
    800036dc:	25073703          	ld	a4,592(a4) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x60>
    800036e0:	00073703          	ld	a4,0(a4)
    800036e4:	06f76263          	bltu	a4,a5,80003748 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800036e8:	fe010113          	addi	sp,sp,-32
    800036ec:	00113c23          	sd	ra,24(sp)
    800036f0:	00813823          	sd	s0,16(sp)
    800036f4:	00913423          	sd	s1,8(sp)
    800036f8:	02010413          	addi	s0,sp,32
    800036fc:	0180006f          	j	80003714 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003700:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003704:	00005717          	auipc	a4,0x5
    80003708:	22473703          	ld	a4,548(a4) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000370c:	00073703          	ld	a4,0(a4)
    80003710:	02f76263          	bltu	a4,a5,80003734 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003714:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003718:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	0b8080e7          	jalr	184(ra) # 800037d4 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003724:	00005797          	auipc	a5,0x5
    80003728:	3297be23          	sd	s1,828(a5) # 80008a60 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    8000372c:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003730:	fc0498e3          	bnez	s1,80003700 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003734:	01813083          	ld	ra,24(sp)
    80003738:	01013403          	ld	s0,16(sp)
    8000373c:	00813483          	ld	s1,8(sp)
    80003740:	02010113          	addi	sp,sp,32
    80003744:	00008067          	ret
    80003748:	00008067          	ret

000000008000374c <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    8000374c:	ff010113          	addi	sp,sp,-16
    80003750:	00113423          	sd	ra,8(sp)
    80003754:	00813023          	sd	s0,0(sp)
    80003758:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    8000375c:	00001097          	auipc	ra,0x1
    80003760:	208080e7          	jalr	520(ra) # 80004964 <_ZN15MemoryAllocator7kmallocEm>
}
    80003764:	00813083          	ld	ra,8(sp)
    80003768:	00013403          	ld	s0,0(sp)
    8000376c:	01010113          	addi	sp,sp,16
    80003770:	00008067          	ret

0000000080003774 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003774:	ff010113          	addi	sp,sp,-16
    80003778:	00113423          	sd	ra,8(sp)
    8000377c:	00813023          	sd	s0,0(sp)
    80003780:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003784:	00001097          	auipc	ra,0x1
    80003788:	250080e7          	jalr	592(ra) # 800049d4 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000378c:	00813083          	ld	ra,8(sp)
    80003790:	00013403          	ld	s0,0(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00813423          	sd	s0,8(sp)
    800037a4:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800037a8:	00005797          	auipc	a5,0x5
    800037ac:	2c07b783          	ld	a5,704(a5) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800037b0:	00000513          	li	a0,0
    while(curr != 0)
    800037b4:	00078863          	beqz	a5,800037c4 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800037b8:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800037bc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800037c0:	ff5ff06f          	j	800037b4 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800037c4:	0005051b          	sext.w	a0,a0
    800037c8:	00813403          	ld	s0,8(sp)
    800037cc:	01010113          	addi	sp,sp,16
    800037d0:	00008067          	ret

00000000800037d4 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800037d4:	ff010113          	addi	sp,sp,-16
    800037d8:	00813423          	sd	s0,8(sp)
    800037dc:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800037e0:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800037e4:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800037e8:	00005797          	auipc	a5,0x5
    800037ec:	2807b783          	ld	a5,640(a5) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    800037f0:	02078263          	beqz	a5,80003814 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800037f4:	00005797          	auipc	a5,0x5
    800037f8:	27478793          	addi	a5,a5,628 # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    800037fc:	0087b703          	ld	a4,8(a5)
    80003800:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003804:	00a7b423          	sd	a0,8(a5)
    }
}
    80003808:	00813403          	ld	s0,8(sp)
    8000380c:	01010113          	addi	sp,sp,16
    80003810:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003814:	00005797          	auipc	a5,0x5
    80003818:	25478793          	addi	a5,a5,596 # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    8000381c:	00a7b423          	sd	a0,8(a5)
    80003820:	00a7b023          	sd	a0,0(a5)
    80003824:	fe5ff06f          	j	80003808 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003828 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003828:	ff010113          	addi	sp,sp,-16
    8000382c:	00813423          	sd	s0,8(sp)
    80003830:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003834:	00005517          	auipc	a0,0x5
    80003838:	23453503          	ld	a0,564(a0) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    8000383c:	00050c63          	beqz	a0,80003854 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003840:	00853783          	ld	a5,8(a0)
    80003844:	00078e63          	beqz	a5,80003860 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003848:	00005717          	auipc	a4,0x5
    8000384c:	22f73023          	sd	a5,544(a4) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003850:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003854:	00813403          	ld	s0,8(sp)
    80003858:	01010113          	addi	sp,sp,16
    8000385c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003860:	00005797          	auipc	a5,0x5
    80003864:	20878793          	addi	a5,a5,520 # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    80003868:	0007b423          	sd	zero,8(a5)
    8000386c:	0007b023          	sd	zero,0(a5)
    80003870:	fe1ff06f          	j	80003850 <_ZN9Scheduler3getEv+0x28>

0000000080003874 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003874:	fe010113          	addi	sp,sp,-32
    80003878:	00113c23          	sd	ra,24(sp)
    8000387c:	00813823          	sd	s0,16(sp)
    80003880:	00913423          	sd	s1,8(sp)
    80003884:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003888:	00005497          	auipc	s1,0x5
    8000388c:	1e04b483          	ld	s1,480(s1) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003890:	02048863          	beqz	s1,800038c0 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003894:	00000613          	li	a2,0
    80003898:	01000593          	li	a1,16
    8000389c:	00048513          	mv	a0,s1
    800038a0:	00000097          	auipc	ra,0x0
    800038a4:	cc0080e7          	jalr	-832(ra) # 80003560 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    800038a8:	00005517          	auipc	a0,0x5
    800038ac:	8d050513          	addi	a0,a0,-1840 # 80008178 <CONSOLE_STATUS+0x168>
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	c6c080e7          	jalr	-916(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    800038b8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800038bc:	fd5ff06f          	j	80003890 <_ZN9Scheduler5printEv+0x1c>
    }
}
    800038c0:	01813083          	ld	ra,24(sp)
    800038c4:	01013403          	ld	s0,16(sp)
    800038c8:	00813483          	ld	s1,8(sp)
    800038cc:	02010113          	addi	sp,sp,32
    800038d0:	00008067          	ret

00000000800038d4 <main>:
#include "../../h/Riscv.hpp"

void main()
{
    800038d4:	ff010113          	addi	sp,sp,-16
    800038d8:	00113423          	sd	ra,8(sp)
    800038dc:	00813023          	sd	s0,0(sp)
    800038e0:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800038e4:	00001097          	auipc	ra,0x1
    800038e8:	854080e7          	jalr	-1964(ra) # 80004138 <_ZN5Riscv10kernelMainEv>
    800038ec:	00813083          	ld	ra,8(sp)
    800038f0:	00013403          	ld	s0,0(sp)
    800038f4:	01010113          	addi	sp,sp,16
    800038f8:	00008067          	ret

00000000800038fc <_Z14buddyInitTest1v>:
#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    800038fc:	ff010113          	addi	sp,sp,-16
    80003900:	00113423          	sd	ra,8(sp)
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    8000390c:	fffff097          	auipc	ra,0xfffff
    80003910:	5d4080e7          	jalr	1492(ra) # 80002ee0 <_Z14printBuddyInfov>
}
    80003914:	00813083          	ld	ra,8(sp)
    80003918:	00013403          	ld	s0,0(sp)
    8000391c:	01010113          	addi	sp,sp,16
    80003920:	00008067          	ret

0000000080003924 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003924:	ff010113          	addi	sp,sp,-16
    80003928:	00113423          	sd	ra,8(sp)
    8000392c:	00813023          	sd	s0,0(sp)
    80003930:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	5ac080e7          	jalr	1452(ra) # 80002ee0 <_Z14printBuddyInfov>
    buddy_alloc(1);
    8000393c:	00100513          	li	a0,1
    80003940:	fffff097          	auipc	ra,0xfffff
    80003944:	23c080e7          	jalr	572(ra) # 80002b7c <_Z11buddy_allocm>
    printBuddyInfo();
    80003948:	fffff097          	auipc	ra,0xfffff
    8000394c:	598080e7          	jalr	1432(ra) # 80002ee0 <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003950:	00100513          	li	a0,1
    80003954:	fffff097          	auipc	ra,0xfffff
    80003958:	228080e7          	jalr	552(ra) # 80002b7c <_Z11buddy_allocm>
    printBuddyInfo();
    8000395c:	fffff097          	auipc	ra,0xfffff
    80003960:	584080e7          	jalr	1412(ra) # 80002ee0 <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003964:	00100513          	li	a0,1
    80003968:	fffff097          	auipc	ra,0xfffff
    8000396c:	214080e7          	jalr	532(ra) # 80002b7c <_Z11buddy_allocm>
    printBuddyInfo();
    80003970:	fffff097          	auipc	ra,0xfffff
    80003974:	570080e7          	jalr	1392(ra) # 80002ee0 <_Z14printBuddyInfov>
    buddy_alloc(3);
    80003978:	00300513          	li	a0,3
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	200080e7          	jalr	512(ra) # 80002b7c <_Z11buddy_allocm>
    printBuddyInfo();
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	55c080e7          	jalr	1372(ra) # 80002ee0 <_Z14printBuddyInfov>
}
    8000398c:	00813083          	ld	ra,8(sp)
    80003990:	00013403          	ld	s0,0(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    8000399c:	ff010113          	addi	sp,sp,-16
    800039a0:	00113423          	sd	ra,8(sp)
    800039a4:	00813023          	sd	s0,0(sp)
    800039a8:	01010413          	addi	s0,sp,16
    void* adr = buddy_alloc(100);
    800039ac:	06400513          	li	a0,100
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	1cc080e7          	jalr	460(ra) # 80002b7c <_Z11buddy_allocm>
    if(adr == nullptr)
    800039b8:	00050a63          	beqz	a0,800039cc <_Z20buddyOnlyAllocsTest2v+0x30>
    {
        printBuddyInfo();
    }
}
    800039bc:	00813083          	ld	ra,8(sp)
    800039c0:	00013403          	ld	s0,0(sp)
    800039c4:	01010113          	addi	sp,sp,16
    800039c8:	00008067          	ret
        printBuddyInfo();
    800039cc:	fffff097          	auipc	ra,0xfffff
    800039d0:	514080e7          	jalr	1300(ra) # 80002ee0 <_Z14printBuddyInfov>
}
    800039d4:	fe9ff06f          	j	800039bc <_Z20buddyOnlyAllocsTest2v+0x20>

00000000800039d8 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    800039d8:	fe010113          	addi	sp,sp,-32
    800039dc:	00113c23          	sd	ra,24(sp)
    800039e0:	00813823          	sd	s0,16(sp)
    800039e4:	00913423          	sd	s1,8(sp)
    800039e8:	01213023          	sd	s2,0(sp)
    800039ec:	02010413          	addi	s0,sp,32
    printBuddyInfo();
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	4f0080e7          	jalr	1264(ra) # 80002ee0 <_Z14printBuddyInfov>
    void* adr = buddy_alloc(1);
    800039f8:	00100513          	li	a0,1
    800039fc:	fffff097          	auipc	ra,0xfffff
    80003a00:	180080e7          	jalr	384(ra) # 80002b7c <_Z11buddy_allocm>
    80003a04:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	4d8080e7          	jalr	1240(ra) # 80002ee0 <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003a10:	00100593          	li	a1,1
    80003a14:	00048513          	mv	a0,s1
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	458080e7          	jalr	1112(ra) # 80002e70 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	4c0080e7          	jalr	1216(ra) # 80002ee0 <_Z14printBuddyInfov>

    adr = buddy_alloc(2);
    80003a28:	00200513          	li	a0,2
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	150080e7          	jalr	336(ra) # 80002b7c <_Z11buddy_allocm>
    80003a34:	00050493          	mv	s1,a0
    void* adr2 = buddy_alloc(3);
    80003a38:	00300513          	li	a0,3
    80003a3c:	fffff097          	auipc	ra,0xfffff
    80003a40:	140080e7          	jalr	320(ra) # 80002b7c <_Z11buddy_allocm>
    80003a44:	00050913          	mv	s2,a0
    printBuddyInfo();
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	498080e7          	jalr	1176(ra) # 80002ee0 <_Z14printBuddyInfov>

    buddy_free(adr, 2);
    80003a50:	00200593          	li	a1,2
    80003a54:	00048513          	mv	a0,s1
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	418080e7          	jalr	1048(ra) # 80002e70 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	480080e7          	jalr	1152(ra) # 80002ee0 <_Z14printBuddyInfov>
    adr = buddy_alloc(1);
    80003a68:	00100513          	li	a0,1
    80003a6c:	fffff097          	auipc	ra,0xfffff
    80003a70:	110080e7          	jalr	272(ra) # 80002b7c <_Z11buddy_allocm>
    80003a74:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003a78:	fffff097          	auipc	ra,0xfffff
    80003a7c:	468080e7          	jalr	1128(ra) # 80002ee0 <_Z14printBuddyInfov>

    buddy_free(adr2, 3);
    80003a80:	00300593          	li	a1,3
    80003a84:	00090513          	mv	a0,s2
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	3e8080e7          	jalr	1000(ra) # 80002e70 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	450080e7          	jalr	1104(ra) # 80002ee0 <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003a98:	00100593          	li	a1,1
    80003a9c:	00048513          	mv	a0,s1
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	3d0080e7          	jalr	976(ra) # 80002e70 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003aa8:	fffff097          	auipc	ra,0xfffff
    80003aac:	438080e7          	jalr	1080(ra) # 80002ee0 <_Z14printBuddyInfov>
}
    80003ab0:	01813083          	ld	ra,24(sp)
    80003ab4:	01013403          	ld	s0,16(sp)
    80003ab8:	00813483          	ld	s1,8(sp)
    80003abc:	00013903          	ld	s2,0(sp)
    80003ac0:	02010113          	addi	sp,sp,32
    80003ac4:	00008067          	ret

0000000080003ac8 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003ac8:	fd010113          	addi	sp,sp,-48
    80003acc:	02113423          	sd	ra,40(sp)
    80003ad0:	02813023          	sd	s0,32(sp)
    80003ad4:	00913c23          	sd	s1,24(sp)
    80003ad8:	01213823          	sd	s2,16(sp)
    80003adc:	01313423          	sd	s3,8(sp)
    80003ae0:	01413023          	sd	s4,0(sp)
    80003ae4:	03010413          	addi	s0,sp,48
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003ae8:	0000a537          	lui	a0,0xa
    80003aec:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003af0:	00001097          	auipc	ra,0x1
    80003af4:	e74080e7          	jalr	-396(ra) # 80004964 <_ZN15MemoryAllocator7kmallocEm>
    80003af8:	00050993          	mv	s3,a0
    printBuddyInfo();
    80003afc:	fffff097          	auipc	ra,0xfffff
    80003b00:	3e4080e7          	jalr	996(ra) # 80002ee0 <_Z14printBuddyInfov>
    for(int i = 0; i < 5000;i++)
    80003b04:	00000493          	li	s1,0
    80003b08:	0080006f          	j	80003b10 <_Z13buddyTestMixav+0x48>
    80003b0c:	0014849b          	addiw	s1,s1,1
    80003b10:	000017b7          	lui	a5,0x1
    80003b14:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003b18:	0697c063          	blt	a5,s1,80003b78 <_Z13buddyTestMixav+0xb0>
    {
        x[i] = buddy_alloc(2);
    80003b1c:	00349913          	slli	s2,s1,0x3
    80003b20:	01298933          	add	s2,s3,s2
    80003b24:	00200513          	li	a0,2
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	054080e7          	jalr	84(ra) # 80002b7c <_Z11buddy_allocm>
    80003b30:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003b34:	fc051ce3          	bnez	a0,80003b0c <_Z13buddyTestMixav+0x44>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003b38:	00a00613          	li	a2,10
    80003b3c:	00048593          	mv	a1,s1
    80003b40:	00005517          	auipc	a0,0x5
    80003b44:	81850513          	addi	a0,a0,-2024 # 80008358 <CONSOLE_STATUS+0x348>
    80003b48:	00000097          	auipc	ra,0x0
    80003b4c:	aac080e7          	jalr	-1364(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003b50:	00000913          	li	s2,0
    80003b54:	02995263          	bge	s2,s1,80003b78 <_Z13buddyTestMixav+0xb0>
            {
                buddy_free(x[j], 2);
    80003b58:	00391793          	slli	a5,s2,0x3
    80003b5c:	00f987b3          	add	a5,s3,a5
    80003b60:	00200593          	li	a1,2
    80003b64:	0007b503          	ld	a0,0(a5)
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	308080e7          	jalr	776(ra) # 80002e70 <_Z10buddy_freePvm>
            for(int j = 0;j < i;j++)
    80003b70:	0019091b          	addiw	s2,s2,1
    80003b74:	fe1ff06f          	j	80003b54 <_Z13buddyTestMixav+0x8c>
            }
            break;
        }
    }
    printBuddyInfo();
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	368080e7          	jalr	872(ra) # 80002ee0 <_Z14printBuddyInfov>
}
    80003b80:	02813083          	ld	ra,40(sp)
    80003b84:	02013403          	ld	s0,32(sp)
    80003b88:	01813483          	ld	s1,24(sp)
    80003b8c:	01013903          	ld	s2,16(sp)
    80003b90:	00813983          	ld	s3,8(sp)
    80003b94:	00013a03          	ld	s4,0(sp)
    80003b98:	03010113          	addi	sp,sp,48
    80003b9c:	00008067          	ret

0000000080003ba0 <_ZN5Riscv17initVirtualMemoryEv>:
extern char *userDataStart;
extern char *kernelTextStart;
extern char *kernelDataStart;

void Riscv::initVirtualMemory()
{
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00813423          	sd	s0,8(sp)
    80003ba8:	01010413          	addi	s0,sp,16
    //size_t addr = (size_t)getNextBlockAddr((size_t)HEAP_START_ADDR);

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t
}
    80003bac:	00813403          	ld	s0,8(sp)
    80003bb0:	01010113          	addi	sp,sp,16
    80003bb4:	00008067          	ret

0000000080003bb8 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch_kernel();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003bb8:	ff010113          	addi	sp,sp,-16
    80003bbc:	00813423          	sd	s0,8(sp)
    80003bc0:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003bc4:	00200793          	li	a5,2
    80003bc8:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003bcc:	00813403          	ld	s0,8(sp)
    80003bd0:	01010113          	addi	sp,sp,16
    80003bd4:	00008067          	ret

0000000080003bd8 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003bd8:	ff010113          	addi	sp,sp,-16
    80003bdc:	00813423          	sd	s0,8(sp)
    80003be0:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003be4:	00200793          	li	a5,2
    80003be8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003bec:	00813403          	ld	s0,8(sp)
    80003bf0:	01010113          	addi	sp,sp,16
    80003bf4:	00008067          	ret

0000000080003bf8 <_ZN5Riscv9endSystemEv>:
{
    80003bf8:	ff010113          	addi	sp,sp,-16
    80003bfc:	00113423          	sd	ra,8(sp)
    80003c00:	00813023          	sd	s0,0(sp)
    80003c04:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80003c08:	00000097          	auipc	ra,0x0
    80003c0c:	fd0080e7          	jalr	-48(ra) # 80003bd8 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80003c10:	00100793          	li	a5,1
    80003c14:	00005717          	auipc	a4,0x5
    80003c18:	e6f70223          	sb	a5,-412(a4) # 80008a78 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	c0c080e7          	jalr	-1012(ra) # 80003828 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80003c24:	fe051ce3          	bnez	a0,80003c1c <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003c28:	00005797          	auipc	a5,0x5
    80003c2c:	d187b783          	ld	a5,-744(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003c30:	0007b503          	ld	a0,0(a5)
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	ba0080e7          	jalr	-1120(ra) # 800037d4 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003c3c:	00005797          	auipc	a5,0x5
    80003c40:	ccc7b783          	ld	a5,-820(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003c44:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	f70080e7          	jalr	-144(ra) # 80003bb8 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003c50:	00005797          	auipc	a5,0x5
    80003c54:	cf07b783          	ld	a5,-784(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003c58:	0007b503          	ld	a0,0(a5)
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	a48080e7          	jalr	-1464(ra) # 800026a4 <_ZN3PCB10isFinishedEv>
    80003c64:	00051863          	bnez	a0,80003c74 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch_kernel();
    80003c68:	ffffd097          	auipc	ra,0xffffd
    80003c6c:	5d0080e7          	jalr	1488(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::consolePCB->isFinished())
    80003c70:	fe1ff06f          	j	80003c50 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003c74:	00000097          	auipc	ra,0x0
    80003c78:	f64080e7          	jalr	-156(ra) # 80003bd8 <_ZN5Riscv17disableInterruptsEv>
}
    80003c7c:	00813083          	ld	ra,8(sp)
    80003c80:	00013403          	ld	s0,0(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret

0000000080003c8c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00813423          	sd	s0,8(sp)
    80003c94:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread) {
    80003c98:	00005797          	auipc	a5,0x5
    80003c9c:	cc87b783          	ld	a5,-824(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    80003ca0:	0007b783          	ld	a5,0(a5)
    80003ca4:	0007c703          	lbu	a4,0(a5)
    80003ca8:	00070c63          	beqz	a4,80003cc0 <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile ("csrw sepc, ra");
    80003cac:	14109073          	csrw	sepc,ra
        __asm__ volatile ("sret");
    80003cb0:	10200073          	sret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}
    80003cb4:	00813403          	ld	s0,8(sp)
    80003cb8:	01010113          	addi	sp,sp,16
    80003cbc:	00008067          	ret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
    80003cc0:	0287b703          	ld	a4,40(a5)
    80003cc4:	00070513          	mv	a0,a4
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
    80003cc8:	0307b783          	ld	a5,48(a5)
    80003ccc:	00078593          	mv	a1,a5
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
    80003cd0:	00005797          	auipc	a5,0x5
    80003cd4:	ca87b783          	ld	a5,-856(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003cd8:	14179073          	csrw	sepc,a5
        __asm__ volatile ("sret");
    80003cdc:	10200073          	sret
}
    80003ce0:	fd5ff06f          	j	80003cb4 <_ZN5Riscv10popSppSpieEv+0x28>

0000000080003ce4 <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    80003ce4:	fb010113          	addi	sp,sp,-80
    80003ce8:	04113423          	sd	ra,72(sp)
    80003cec:	04813023          	sd	s0,64(sp)
    80003cf0:	02913c23          	sd	s1,56(sp)
    80003cf4:	03213823          	sd	s2,48(sp)
    80003cf8:	03313423          	sd	s3,40(sp)
    80003cfc:	03413023          	sd	s4,32(sp)
    80003d00:	01513c23          	sd	s5,24(sp)
    80003d04:	01613823          	sd	s6,16(sp)
    80003d08:	01713423          	sd	s7,8(sp)
    80003d0c:	05010413          	addi	s0,sp,80
    80003d10:	00058993          	mv	s3,a1
    80003d14:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    80003d18:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    80003d1c:	01555b13          	srli	s6,a0,0x15
    80003d20:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    80003d24:	00c55493          	srli	s1,a0,0xc
    80003d28:	1ff4f913          	andi	s2,s1,511
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    80003d2c:	003b9b93          	slli	s7,s7,0x3
    80003d30:	00005797          	auipc	a5,0x5
    80003d34:	d507b783          	ld	a5,-688(a5) # 80008a80 <_ZN5Riscv7mainPMTE>
    80003d38:	017787b3          	add	a5,a5,s7
    80003d3c:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    80003d40:	06050663          	beqz	a0,80003dac <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80003d44:	00a55513          	srli	a0,a0,0xa
    80003d48:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    80003d4c:	003b1a93          	slli	s5,s6,0x3
    80003d50:	01550ab3          	add	s5,a0,s5
    80003d54:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    80003d58:	0a050063          	beqz	a0,80003df8 <_ZN5Riscv14setVirtualAddrEmmm+0x114>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    80003d5c:	00a55513          	srli	a0,a0,0xa
    80003d60:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80003d64:	00391913          	slli	s2,s2,0x3
    80003d68:	01250533          	add	a0,a0,s2
    80003d6c:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    80003d70:	00079863          	bnez	a5,80003d80 <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    80003d74:	00a49493          	slli	s1,s1,0xa
    80003d78:	0144ea33          	or	s4,s1,s4
    80003d7c:	01453023          	sd	s4,0(a0)
    }
}
    80003d80:	04813083          	ld	ra,72(sp)
    80003d84:	04013403          	ld	s0,64(sp)
    80003d88:	03813483          	ld	s1,56(sp)
    80003d8c:	03013903          	ld	s2,48(sp)
    80003d90:	02813983          	ld	s3,40(sp)
    80003d94:	02013a03          	ld	s4,32(sp)
    80003d98:	01813a83          	ld	s5,24(sp)
    80003d9c:	01013b03          	ld	s6,16(sp)
    80003da0:	00813b83          	ld	s7,8(sp)
    80003da4:	05010113          	addi	sp,sp,80
    80003da8:	00008067          	ret
        pmt1 = buddy_alloc(1);
    80003dac:	00100513          	li	a0,1
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	dcc080e7          	jalr	-564(ra) # 80002b7c <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003db8:	00000793          	li	a5,0
    80003dbc:	1ff00713          	li	a4,511
    80003dc0:	00f74c63          	blt	a4,a5,80003dd8 <_ZN5Riscv14setVirtualAddrEmmm+0xf4>
            ((size_t*)pmt1)[i] = 0;
    80003dc4:	00379713          	slli	a4,a5,0x3
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003dd0:	0017879b          	addiw	a5,a5,1
    80003dd4:	fe9ff06f          	j	80003dbc <_ZN5Riscv14setVirtualAddrEmmm+0xd8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    80003dd8:	00c55793          	srli	a5,a0,0xc
    80003ddc:	00a79793          	slli	a5,a5,0xa
    80003de0:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    80003de4:	00005717          	auipc	a4,0x5
    80003de8:	c9c73703          	ld	a4,-868(a4) # 80008a80 <_ZN5Riscv7mainPMTE>
    80003dec:	01770bb3          	add	s7,a4,s7
    80003df0:	00fbb023          	sd	a5,0(s7)
    80003df4:	f59ff06f          	j	80003d4c <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc(1);
    80003df8:	00100513          	li	a0,1
    80003dfc:	fffff097          	auipc	ra,0xfffff
    80003e00:	d80080e7          	jalr	-640(ra) # 80002b7c <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003e04:	00000793          	li	a5,0
    80003e08:	1ff00713          	li	a4,511
    80003e0c:	00f74c63          	blt	a4,a5,80003e24 <_ZN5Riscv14setVirtualAddrEmmm+0x140>
            ((size_t*)pmt0)[i] = 0;
    80003e10:	00379713          	slli	a4,a5,0x3
    80003e14:	00e50733          	add	a4,a0,a4
    80003e18:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003e1c:	0017879b          	addiw	a5,a5,1
    80003e20:	fe9ff06f          	j	80003e08 <_ZN5Riscv14setVirtualAddrEmmm+0x124>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80003e24:	00c55793          	srli	a5,a0,0xc
    80003e28:	00a79793          	slli	a5,a5,0xa
    80003e2c:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    80003e30:	013ab023          	sd	s3,0(s5)
    80003e34:	f31ff06f          	j	80003d64 <_ZN5Riscv14setVirtualAddrEmmm+0x80>

0000000080003e38 <_ZN5Riscv19setVirtualAddrRangeEmmi>:
{
    80003e38:	fd010113          	addi	sp,sp,-48
    80003e3c:	02113423          	sd	ra,40(sp)
    80003e40:	02813023          	sd	s0,32(sp)
    80003e44:	00913c23          	sd	s1,24(sp)
    80003e48:	01213823          	sd	s2,16(sp)
    80003e4c:	01313423          	sd	s3,8(sp)
    80003e50:	03010413          	addi	s0,sp,48
    80003e54:	00050493          	mv	s1,a0
    80003e58:	00058913          	mv	s2,a1
    80003e5c:	00060993          	mv	s3,a2
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80003e60:	0324f263          	bgeu	s1,s2,80003e84 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x4c>
        setVirtualAddr(i, VMEM_V_BIT, permission);
    80003e64:	00098613          	mv	a2,s3
    80003e68:	00100593          	li	a1,1
    80003e6c:	00048513          	mv	a0,s1
    80003e70:	00000097          	auipc	ra,0x0
    80003e74:	e74080e7          	jalr	-396(ra) # 80003ce4 <_ZN5Riscv14setVirtualAddrEmmm>
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80003e78:	000017b7          	lui	a5,0x1
    80003e7c:	00f484b3          	add	s1,s1,a5
    80003e80:	fe1ff06f          	j	80003e60 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x28>
}
    80003e84:	02813083          	ld	ra,40(sp)
    80003e88:	02013403          	ld	s0,32(sp)
    80003e8c:	01813483          	ld	s1,24(sp)
    80003e90:	01013903          	ld	s2,16(sp)
    80003e94:	00813983          	ld	s3,8(sp)
    80003e98:	03010113          	addi	sp,sp,48
    80003e9c:	00008067          	ret

0000000080003ea0 <_ZN5Riscv10initSystemEv>:
{
    80003ea0:	fc010113          	addi	sp,sp,-64
    80003ea4:	02113c23          	sd	ra,56(sp)
    80003ea8:	02813823          	sd	s0,48(sp)
    80003eac:	02913423          	sd	s1,40(sp)
    80003eb0:	03213023          	sd	s2,32(sp)
    80003eb4:	01313c23          	sd	s3,24(sp)
    80003eb8:	01413823          	sd	s4,16(sp)
    80003ebc:	01513423          	sd	s5,8(sp)
    80003ec0:	01613023          	sd	s6,0(sp)
    80003ec4:	04010413          	addi	s0,sp,64
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003ec8:	00005797          	auipc	a5,0x5
    80003ecc:	a287b783          	ld	a5,-1496(a5) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003ed0:	10579073          	csrw	stvec,a5
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);
    80003ed4:	00005917          	auipc	s2,0x5
    80003ed8:	a0c93903          	ld	s2,-1524(s2) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003edc:	00093503          	ld	a0,0(s2)
    80003ee0:	fffff097          	auipc	ra,0xfffff
    80003ee4:	aa4080e7          	jalr	-1372(ra) # 80002984 <_Z12getBlockAddrm>
    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80003ee8:	010017b7          	lui	a5,0x1001
    80003eec:	00f504b3          	add	s1,a0,a5
    MemoryAllocator::initMemory(newStartAddr);
    80003ef0:	00048513          	mv	a0,s1
    80003ef4:	00000097          	auipc	ra,0x0
    80003ef8:	680080e7          	jalr	1664(ra) # 80004574 <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80003efc:	000015b7          	lui	a1,0x1
    80003f00:	00158593          	addi	a1,a1,1 # 1001 <_entry-0x7fffefff>
    80003f04:	00093503          	ld	a0,0(s2)
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	d00080e7          	jalr	-768(ra) # 80001c08 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80003f10:	00000693          	li	a3,0
    80003f14:	00000613          	li	a2,0
    80003f18:	06000593          	li	a1,96
    80003f1c:	00004517          	auipc	a0,0x4
    80003f20:	44c50513          	addi	a0,a0,1100 # 80008368 <CONSOLE_STATUS+0x358>
    80003f24:	ffffe097          	auipc	ra,0xffffe
    80003f28:	e54080e7          	jalr	-428(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003f2c:	00005917          	auipc	s2,0x5
    80003f30:	b4c90913          	addi	s2,s2,-1204 # 80008a78 <_ZN5Riscv12finishSystemE>
    80003f34:	00a93823          	sd	a0,16(s2)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80003f38:	00000693          	li	a3,0
    80003f3c:	00000613          	li	a2,0
    80003f40:	01800593          	li	a1,24
    80003f44:	00004517          	auipc	a0,0x4
    80003f48:	43450513          	addi	a0,a0,1076 # 80008378 <CONSOLE_STATUS+0x368>
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	e2c080e7          	jalr	-468(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003f54:	00a93c23          	sd	a0,24(s2)
    PCB::initialize();
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	624080e7          	jalr	1572(ra) # 8000257c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003f60:	fffff097          	auipc	ra,0xfffff
    80003f64:	0d0080e7          	jalr	208(ra) # 80003030 <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc(1);
    80003f68:	00100513          	li	a0,1
    80003f6c:	fffff097          	auipc	ra,0xfffff
    80003f70:	c10080e7          	jalr	-1008(ra) # 80002b7c <_Z11buddy_allocm>
    80003f74:	00a93423          	sd	a0,8(s2)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    80003f78:	00000793          	li	a5,0
    80003f7c:	1ff00713          	li	a4,511
    80003f80:	02f76063          	bltu	a4,a5,80003fa0 <_ZN5Riscv10initSystemEv+0x100>
        ((size_t*)mainPMT)[i] = 0;
    80003f84:	00379693          	slli	a3,a5,0x3
    80003f88:	00005717          	auipc	a4,0x5
    80003f8c:	af873703          	ld	a4,-1288(a4) # 80008a80 <_ZN5Riscv7mainPMTE>
    80003f90:	00d70733          	add	a4,a4,a3
    80003f94:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    80003f98:	00178793          	addi	a5,a5,1 # 1001001 <_entry-0x7effefff>
    80003f9c:	fe1ff06f          	j	80003f7c <_ZN5Riscv10initSystemEv+0xdc>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    80003fa0:	00005917          	auipc	s2,0x5
    80003fa4:	ad890913          	addi	s2,s2,-1320 # 80008a78 <_ZN5Riscv12finishSystemE>
    80003fa8:	01000613          	li	a2,16
    80003fac:	00893583          	ld	a1,8(s2)
    80003fb0:	00004517          	auipc	a0,0x4
    80003fb4:	3e050513          	addi	a0,a0,992 # 80008390 <CONSOLE_STATUS+0x380>
    80003fb8:	fffff097          	auipc	ra,0xfffff
    80003fbc:	63c080e7          	jalr	1596(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    uint64 kTextStart = (uint64)(&kernelTextStart);
    80003fc0:	00005b17          	auipc	s6,0x5
    80003fc4:	938b3b03          	ld	s6,-1736(s6) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    uint64 kDataStart = (uint64)(&kernelDataStart);
    80003fc8:	00005a97          	auipc	s5,0x5
    80003fcc:	938aba83          	ld	s5,-1736(s5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x38>
    uint64 uTextStart = (uint64)(&userTextStart);
    80003fd0:	00005997          	auipc	s3,0x5
    80003fd4:	9889b983          	ld	s3,-1656(s3) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    uint64 uDataStart = (uint64)(&userDataStart);
    80003fd8:	00005a17          	auipc	s4,0x5
    80003fdc:	9a8a3a03          	ld	s4,-1624(s4) # 80008980 <_GLOBAL_OFFSET_TABLE_+0xb8>
    setVirtualAddrRange(programStartAddr, kTextStart, KERNEL_RX); // before kernel instructions
    80003fe0:	00b00613          	li	a2,11
    80003fe4:	000b0593          	mv	a1,s6
    80003fe8:	00005517          	auipc	a0,0x5
    80003fec:	8b053503          	ld	a0,-1872(a0) # 80008898 <_ZN5Riscv16programStartAddrE>
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	e48080e7          	jalr	-440(ra) # 80003e38 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange(kTextStart, kDataStart,KERNEL_RX); // kernel instructions
    80003ff8:	00b00613          	li	a2,11
    80003ffc:	000a8593          	mv	a1,s5
    80004000:	000b0513          	mv	a0,s6
    80004004:	00000097          	auipc	ra,0x0
    80004008:	e34080e7          	jalr	-460(ra) # 80003e38 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&kernelDataStart), uTextStart, KERNEL_RW); // kernel data
    8000400c:	00700613          	li	a2,7
    80004010:	00098593          	mv	a1,s3
    80004014:	000a8513          	mv	a0,s5
    80004018:	00000097          	auipc	ra,0x0
    8000401c:	e20080e7          	jalr	-480(ra) # 80003e38 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userTextStart), uDataStart, USER_RX); //user instructions
    80004020:	01b00613          	li	a2,27
    80004024:	000a0593          	mv	a1,s4
    80004028:	00098513          	mv	a0,s3
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	e0c080e7          	jalr	-500(ra) # 80003e38 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userDataStart), (size_t)HEAP_START_ADDR, USER_RW); // user data
    80004034:	00005997          	auipc	s3,0x5
    80004038:	8ac9b983          	ld	s3,-1876(s3) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000403c:	01700613          	li	a2,23
    80004040:	0009b583          	ld	a1,0(s3)
    80004044:	000a0513          	mv	a0,s4
    80004048:	00000097          	auipc	ra,0x0
    8000404c:	df0080e7          	jalr	-528(ra) # 80003e38 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)HEAP_START_ADDR, (size_t)newStartAddr, KERNEL_RW); // kernel heap data
    80004050:	00700613          	li	a2,7
    80004054:	00048593          	mv	a1,s1
    80004058:	0009b503          	ld	a0,0(s3)
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	ddc080e7          	jalr	-548(ra) # 80003e38 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)newStartAddr, (size_t)HEAP_END_ADDR + 1,USER_RW); // user heap data
    80004064:	00005797          	auipc	a5,0x5
    80004068:	9047b783          	ld	a5,-1788(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0xa0>
    8000406c:	0007b583          	ld	a1,0(a5)
    80004070:	01700613          	li	a2,23
    80004074:	00158593          	addi	a1,a1,1
    80004078:	00048513          	mv	a0,s1
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	dbc080e7          	jalr	-580(ra) # 80003e38 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    80004084:	00f00613          	li	a2,15
    80004088:	00100593          	li	a1,1
    8000408c:	00005797          	auipc	a5,0x5
    80004090:	8447b783          	ld	a5,-1980(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80004094:	0007b503          	ld	a0,0(a5)
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	c4c080e7          	jalr	-948(ra) # 80003ce4 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    800040a0:	00f00613          	li	a2,15
    800040a4:	00100593          	li	a1,1
    800040a8:	00005797          	auipc	a5,0x5
    800040ac:	8687b783          	ld	a5,-1944(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x48>
    800040b0:	0007b503          	ld	a0,0(a5)
    800040b4:	00000097          	auipc	ra,0x0
    800040b8:	c30080e7          	jalr	-976(ra) # 80003ce4 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    800040bc:	00f00613          	li	a2,15
    800040c0:	00100593          	li	a1,1
    800040c4:	00005797          	auipc	a5,0x5
    800040c8:	8147b783          	ld	a5,-2028(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800040cc:	0007b503          	ld	a0,0(a5)
    800040d0:	00000097          	auipc	ra,0x0
    800040d4:	c14080e7          	jalr	-1004(ra) # 80003ce4 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr(0xc201004,0x1,0xf);
    800040d8:	00f00613          	li	a2,15
    800040dc:	00100593          	li	a1,1
    800040e0:	0c201537          	lui	a0,0xc201
    800040e4:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    800040e8:	00000097          	auipc	ra,0x0
    800040ec:	bfc080e7          	jalr	-1028(ra) # 80003ce4 <_ZN5Riscv14setVirtualAddrEmmm>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800040f0:	000407b7          	lui	a5,0x40
    800040f4:	1007a073          	csrs	sstatus,a5
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    800040f8:	00893783          	ld	a5,8(s2)
    800040fc:	00c7d793          	srli	a5,a5,0xc
    80004100:	fff00713          	li	a4,-1
    80004104:	03f71713          	slli	a4,a4,0x3f
    80004108:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    8000410c:	18079073          	csrw	satp,a5
}
    80004110:	03813083          	ld	ra,56(sp)
    80004114:	03013403          	ld	s0,48(sp)
    80004118:	02813483          	ld	s1,40(sp)
    8000411c:	02013903          	ld	s2,32(sp)
    80004120:	01813983          	ld	s3,24(sp)
    80004124:	01013a03          	ld	s4,16(sp)
    80004128:	00813a83          	ld	s5,8(sp)
    8000412c:	00013b03          	ld	s6,0(sp)
    80004130:	04010113          	addi	sp,sp,64
    80004134:	00008067          	ret

0000000080004138 <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    80004138:	00005797          	auipc	a5,0x5
    8000413c:	9607c783          	lbu	a5,-1696(a5) # 80008a98 <_ZN5Riscv16kernelMainCalledE>
    80004140:	00078463          	beqz	a5,80004148 <_ZN5Riscv10kernelMainEv+0x10>
    80004144:	00008067          	ret
{
    80004148:	ff010113          	addi	sp,sp,-16
    8000414c:	00113423          	sd	ra,8(sp)
    80004150:	00813023          	sd	s0,0(sp)
    80004154:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004158:	00100793          	li	a5,1
    8000415c:	00005717          	auipc	a4,0x5
    80004160:	92f70e23          	sb	a5,-1732(a4) # 80008a98 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80004164:	00000097          	auipc	ra,0x0
    80004168:	d3c080e7          	jalr	-708(ra) # 80003ea0 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    8000416c:	00000097          	auipc	ra,0x0
    80004170:	a4c080e7          	jalr	-1460(ra) # 80003bb8 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::userPCB->isFinished())
    80004174:	00004797          	auipc	a5,0x4
    80004178:	7d47b783          	ld	a5,2004(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000417c:	0007b503          	ld	a0,0(a5)
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	524080e7          	jalr	1316(ra) # 800026a4 <_ZN3PCB10isFinishedEv>
    80004188:	00051863          	bnez	a0,80004198 <_ZN5Riscv10kernelMainEv+0x60>
        thread_dispatch_kernel();
    8000418c:	ffffd097          	auipc	ra,0xffffd
    80004190:	0ac080e7          	jalr	172(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::userPCB->isFinished())
    80004194:	fe1ff06f          	j	80004174 <_ZN5Riscv10kernelMainEv+0x3c>
    endSystem();
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	a60080e7          	jalr	-1440(ra) # 80003bf8 <_ZN5Riscv9endSystemEv>
}
    800041a0:	00813083          	ld	ra,8(sp)
    800041a4:	00013403          	ld	s0,0(sp)
    800041a8:	01010113          	addi	sp,sp,16
    800041ac:	00008067          	ret

00000000800041b0 <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00113423          	sd	ra,8(sp)
    800041b8:	00813023          	sd	s0,0(sp)
    800041bc:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    800041c0:	00f00613          	li	a2,15
    800041c4:	00100593          	li	a1,1
    800041c8:	00000097          	auipc	ra,0x0
    800041cc:	b1c080e7          	jalr	-1252(ra) # 80003ce4 <_ZN5Riscv14setVirtualAddrEmmm>
}
    800041d0:	00813083          	ld	ra,8(sp)
    800041d4:	00013403          	ld	s0,0(sp)
    800041d8:	01010113          	addi	sp,sp,16
    800041dc:	00008067          	ret

00000000800041e0 <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    800041e0:	ff010113          	addi	sp,sp,-16
    800041e4:	00113423          	sd	ra,8(sp)
    800041e8:	00813023          	sd	s0,0(sp)
    800041ec:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    800041f0:	00f00613          	li	a2,15
    800041f4:	00100593          	li	a1,1
    800041f8:	00000097          	auipc	ra,0x0
    800041fc:	aec080e7          	jalr	-1300(ra) # 80003ce4 <_ZN5Riscv14setVirtualAddrEmmm>
}
    80004200:	00813083          	ld	ra,8(sp)
    80004204:	00013403          	ld	s0,0(sp)
    80004208:	01010113          	addi	sp,sp,16
    8000420c:	00008067          	ret

0000000080004210 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00813423          	sd	s0,8(sp)
    80004218:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    8000421c:	00200793          	li	a5,2
    80004220:	1047b073          	csrc	sie,a5
}
    80004224:	00813403          	ld	s0,8(sp)
    80004228:	01010113          	addi	sp,sp,16
    8000422c:	00008067          	ret

0000000080004230 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00813423          	sd	s0,8(sp)
    80004238:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    8000423c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004240:	00004717          	auipc	a4,0x4
    80004244:	72073703          	ld	a4,1824(a4) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004248:	00073703          	ld	a4,0(a4)
    8000424c:	01073703          	ld	a4,16(a4)
    80004250:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004254:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004258:	00078593          	mv	a1,a5
}
    8000425c:	00813403          	ld	s0,8(sp)
    80004260:	01010113          	addi	sp,sp,16
    80004264:	00008067          	ret

0000000080004268 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004268:	ff010113          	addi	sp,sp,-16
    8000426c:	00813423          	sd	s0,8(sp)
    80004270:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004274:	00004797          	auipc	a5,0x4
    80004278:	6ec7b783          	ld	a5,1772(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    8000427c:	0007b783          	ld	a5,0(a5)
    80004280:	0007c783          	lbu	a5,0(a5)
    80004284:	00078c63          	beqz	a5,8000429c <_ZN5Riscv14changePrivModeEv+0x34>
    80004288:	10000793          	li	a5,256
    8000428c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004290:	00813403          	ld	s0,8(sp)
    80004294:	01010113          	addi	sp,sp,16
    80004298:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000429c:	10000793          	li	a5,256
    800042a0:	1007b073          	csrc	sstatus,a5
    800042a4:	fedff06f          	j	80004290 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800042a8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800042a8:	f9010113          	addi	sp,sp,-112
    800042ac:	06113423          	sd	ra,104(sp)
    800042b0:	06813023          	sd	s0,96(sp)
    800042b4:	04913c23          	sd	s1,88(sp)
    800042b8:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800042bc:	00070713          	mv	a4,a4
    800042c0:	00004797          	auipc	a5,0x4
    800042c4:	6c87b783          	ld	a5,1736(a5) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xc0>
    800042c8:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800042cc:	00004797          	auipc	a5,0x4
    800042d0:	6947b783          	ld	a5,1684(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    800042d4:	0007b783          	ld	a5,0(a5)
    800042d8:	14002773          	csrr	a4,sscratch
    800042dc:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800042e0:	142027f3          	csrr	a5,scause
    800042e4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800042e8:	fb843783          	ld	a5,-72(s0)

    static const size_t storePF = 15;
    static const size_t loadPF = 13;
    static const size_t instrPF = 12;

    switch(scause)
    800042ec:	00f00713          	li	a4,15
    800042f0:	02f76863          	bltu	a4,a5,80004320 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    800042f4:	00200713          	li	a4,2
    800042f8:	10e7e863          	bltu	a5,a4,80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800042fc:	00f00713          	li	a4,15
    80004300:	10f76463          	bltu	a4,a5,80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    80004304:	00279793          	slli	a5,a5,0x2
    80004308:	00004717          	auipc	a4,0x4
    8000430c:	09470713          	addi	a4,a4,148 # 8000839c <CONSOLE_STATUS+0x38c>
    80004310:	00e787b3          	add	a5,a5,a4
    80004314:	0007a783          	lw	a5,0(a5)
    80004318:	00e787b3          	add	a5,a5,a4
    8000431c:	00078067          	jr	a5
    80004320:	fff00713          	li	a4,-1
    80004324:	03f71713          	slli	a4,a4,0x3f
    80004328:	00170713          	addi	a4,a4,1
    8000432c:	04e78a63          	beq	a5,a4,80004380 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    80004330:	fff00713          	li	a4,-1
    80004334:	03f71713          	slli	a4,a4,0x3f
    80004338:	00970713          	addi	a4,a4,9
    8000433c:	0ce79663          	bne	a5,a4,80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            changePrivMode();
            break;
        }
        case hwInterrupt:
        {
            KConsole::getCharactersFromConsole();
    80004340:	fffff097          	auipc	ra,0xfffff
    80004344:	e48080e7          	jalr	-440(ra) # 80003188 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004348:	00002097          	auipc	ra,0x2
    8000434c:	9bc080e7          	jalr	-1604(ra) # 80005d04 <plic_claim>
    80004350:	00002097          	auipc	ra,0x2
    80004354:	9ec080e7          	jalr	-1556(ra) # 80005d3c <plic_complete>
            break;
    80004358:	0b00006f          	j	80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	36c080e7          	jalr	876(ra) # 800026c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004364:	0a40006f          	j	80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	360080e7          	jalr	864(ra) # 800026c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004370:	0980006f          	j	80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004374:	ffffe097          	auipc	ra,0xffffe
    80004378:	354080e7          	jalr	852(ra) # 800026c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000437c:	08c0006f          	j	80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004380:	141027f3          	csrr	a5,sepc
    80004384:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004388:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    8000438c:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004390:	100027f3          	csrr	a5,sstatus
    80004394:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004398:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    8000439c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800043a0:	00200793          	li	a5,2
    800043a4:	1447b073          	csrc	sip,a5
            totalTime++;
    800043a8:	00004717          	auipc	a4,0x4
    800043ac:	6d070713          	addi	a4,a4,1744 # 80008a78 <_ZN5Riscv12finishSystemE>
    800043b0:	02873783          	ld	a5,40(a4)
    800043b4:	00178793          	addi	a5,a5,1
    800043b8:	02f73423          	sd	a5,40(a4)
            PCB::timeSliceCounter++;
    800043bc:	00004497          	auipc	s1,0x4
    800043c0:	55c4b483          	ld	s1,1372(s1) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x50>
    800043c4:	0004b783          	ld	a5,0(s1)
    800043c8:	00178793          	addi	a5,a5,1
    800043cc:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800043d0:	fffff097          	auipc	ra,0xfffff
    800043d4:	2f4080e7          	jalr	756(ra) # 800036c4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800043d8:	00004797          	auipc	a5,0x4
    800043dc:	5887b783          	ld	a5,1416(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    800043e0:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800043e4:	0187b783          	ld	a5,24(a5)
    800043e8:	0004b703          	ld	a4,0(s1)
    800043ec:	02f77863          	bgeu	a4,a5,8000441c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    800043f0:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800043f4:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800043f8:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800043fc:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004400:	00000097          	auipc	ra,0x0
    80004404:	e68080e7          	jalr	-408(ra) # 80004268 <_ZN5Riscv14changePrivModeEv>
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
    }
}
    80004408:	06813083          	ld	ra,104(sp)
    8000440c:	06013403          	ld	s0,96(sp)
    80004410:	05813483          	ld	s1,88(sp)
    80004414:	07010113          	addi	sp,sp,112
    80004418:	00008067          	ret
                PCB::timeSliceCounter = 0;
    8000441c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	038080e7          	jalr	56(ra) # 80002458 <_ZN3PCB8dispatchEv>
    80004428:	fc9ff06f          	j	800043f0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    8000442c:	ffffe097          	auipc	ra,0xffffe
    80004430:	29c080e7          	jalr	668(ra) # 800026c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004434:	fd5ff06f          	j	80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004438:	ffffe097          	auipc	ra,0xffffe
    8000443c:	290080e7          	jalr	656(ra) # 800026c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004440:	fc9ff06f          	j	80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	284080e7          	jalr	644(ra) # 800026c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000444c:	fbdff06f          	j	80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004450:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004454:	14102773          	csrr	a4,sepc
    80004458:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    8000445c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004460:	00470713          	addi	a4,a4,4
    80004464:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004468:	10002773          	csrr	a4,sstatus
    8000446c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004470:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004474:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004478:	04300713          	li	a4,67
    8000447c:	02f76463          	bltu	a4,a5,800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80004480:	00279793          	slli	a5,a5,0x2
    80004484:	00004717          	auipc	a4,0x4
    80004488:	f5870713          	addi	a4,a4,-168 # 800083dc <CONSOLE_STATUS+0x3cc>
    8000448c:	00e787b3          	add	a5,a5,a4
    80004490:	0007a783          	lw	a5,0(a5)
    80004494:	00e787b3          	add	a5,a5,a4
    80004498:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    8000449c:	00000097          	auipc	ra,0x0
    800044a0:	4f0080e7          	jalr	1264(ra) # 8000498c <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800044a4:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800044a8:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800044ac:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800044b0:	14179073          	csrw	sepc,a5
            changePrivMode();
    800044b4:	00000097          	auipc	ra,0x0
    800044b8:	db4080e7          	jalr	-588(ra) # 80004268 <_ZN5Riscv14changePrivModeEv>
}
    800044bc:	f4dff06f          	j	80004408 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	53c080e7          	jalr	1340(ra) # 800049fc <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800044c8:	fddff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	3c4080e7          	jalr	964(ra) # 80002890 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800044d4:	fd1ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    800044d8:	ffffe097          	auipc	ra,0xffffe
    800044dc:	2d0080e7          	jalr	720(ra) # 800027a8 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    800044e0:	fc5ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	368080e7          	jalr	872(ra) # 8000284c <_ZN3PCB18threadStartHandlerEv>
                    break;
    800044ec:	fb9ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	224080e7          	jalr	548(ra) # 80002714 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800044f8:	fadff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	1cc080e7          	jalr	460(ra) # 800026c8 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004504:	fa1ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	23c080e7          	jalr	572(ra) # 80002744 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004510:	f95ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDelPCBHandler();
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	414080e7          	jalr	1044(ra) # 80002928 <_ZN3PCB19threadDelPCBHandlerEv>
                    break;
    8000451c:	f89ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    80004520:	00001097          	auipc	ra,0x1
    80004524:	dec080e7          	jalr	-532(ra) # 8000530c <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004528:	f7dff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	e94080e7          	jalr	-364(ra) # 800053c0 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004534:	f71ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    80004538:	00001097          	auipc	ra,0x1
    8000453c:	edc080e7          	jalr	-292(ra) # 80005414 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004540:	f65ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    80004544:	00001097          	auipc	ra,0x1
    80004548:	f14080e7          	jalr	-236(ra) # 80005458 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    8000454c:	f59ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    80004550:	fffff097          	auipc	ra,0xfffff
    80004554:	e3c080e7          	jalr	-452(ra) # 8000338c <_ZN8KConsole11getcHandlerEv>
                    break;
    80004558:	f4dff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    8000455c:	fffff097          	auipc	ra,0xfffff
    80004560:	e00080e7          	jalr	-512(ra) # 8000335c <_ZN8KConsole11putcHandlerEv>
                    break;
    80004564:	f41ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004568:	fffff097          	auipc	ra,0xfffff
    8000456c:	f80080e7          	jalr	-128(ra) # 800034e8 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004570:	f35ff06f          	j	800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

0000000080004574 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004574:	ff010113          	addi	sp,sp,-16
    80004578:	00813423          	sd	s0,8(sp)
    8000457c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004580:	00004717          	auipc	a4,0x4
    80004584:	52872703          	lw	a4,1320(a4) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004588:	00100793          	li	a5,1
    8000458c:	02f70c63          	beq	a4,a5,800045c4 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004590:	00004797          	auipc	a5,0x4
    80004594:	51878793          	addi	a5,a5,1304 # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004598:	00100713          	li	a4,1
    8000459c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800045a0:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    800045a4:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    800045a8:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    800045ac:	00004797          	auipc	a5,0x4
    800045b0:	3bc7b783          	ld	a5,956(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800045b4:	0007b783          	ld	a5,0(a5)
    800045b8:	40a787b3          	sub	a5,a5,a0
    800045bc:	ff178793          	addi	a5,a5,-15
    800045c0:	00f53023          	sd	a5,0(a0)
}
    800045c4:	00813403          	ld	s0,8(sp)
    800045c8:	01010113          	addi	sp,sp,16
    800045cc:	00008067          	ret

00000000800045d0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    800045d0:	ff010113          	addi	sp,sp,-16
    800045d4:	00813423          	sd	s0,8(sp)
    800045d8:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800045dc:	00004797          	auipc	a5,0x4
    800045e0:	4cc7a783          	lw	a5,1228(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800045e4:	02078a63          	beqz	a5,80004618 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800045e8:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    800045ec:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    800045f0:	00004797          	auipc	a5,0x4
    800045f4:	4c07b783          	ld	a5,1216(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    800045f8:	02078663          	beqz	a5,80004624 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800045fc:	00004717          	auipc	a4,0x4
    80004600:	36c73703          	ld	a4,876(a4) # 80008968 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004604:	00073703          	ld	a4,0(a4)
    80004608:	02c76463          	bltu	a4,a2,80004630 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    8000460c:	00863783          	ld	a5,8(a2)
    80004610:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004614:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004618:	00813403          	ld	s0,8(sp)
    8000461c:	01010113          	addi	sp,sp,16
    80004620:	00008067          	ret
        headAllocated = newAllocated;
    80004624:	00004797          	auipc	a5,0x4
    80004628:	48a7b623          	sd	a0,1164(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    8000462c:	fedff06f          	j	80004618 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004630:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004634:	00004797          	auipc	a5,0x4
    80004638:	46a7be23          	sd	a0,1148(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    8000463c:	fddff06f          	j	80004618 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004640 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004640:	ff010113          	addi	sp,sp,-16
    80004644:	00813423          	sd	s0,8(sp)
    80004648:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    8000464c:	00004797          	auipc	a5,0x4
    80004650:	45c7a783          	lw	a5,1116(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004654:	02078c63          	beqz	a5,8000468c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004658:	00004797          	auipc	a5,0x4
    8000465c:	4587b783          	ld	a5,1112(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004660:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004664:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004668:	00000713          	li	a4,0
    while(curr != 0)
    8000466c:	00078c63          	beqz	a5,80004684 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004670:	00f56863          	bltu	a0,a5,80004680 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004674:	00078713          	mv	a4,a5
        curr = curr->next;
    80004678:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000467c:	ff1ff06f          	j	8000466c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004680:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004684:	00070a63          	beqz	a4,80004698 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004688:	00a73423          	sd	a0,8(a4)
}
    8000468c:	00813403          	ld	s0,8(sp)
    80004690:	01010113          	addi	sp,sp,16
    80004694:	00008067          	ret
        headAllocated = newAllocated;
    80004698:	00004797          	auipc	a5,0x4
    8000469c:	40a7bc23          	sd	a0,1048(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    800046a0:	fedff06f          	j	8000468c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

00000000800046a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800046a4:	00004797          	auipc	a5,0x4
    800046a8:	4047a783          	lw	a5,1028(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800046ac:	0e078e63          	beqz	a5,800047a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    800046b0:	fe010113          	addi	sp,sp,-32
    800046b4:	00113c23          	sd	ra,24(sp)
    800046b8:	00813823          	sd	s0,16(sp)
    800046bc:	00913423          	sd	s1,8(sp)
    800046c0:	02010413          	addi	s0,sp,32
    800046c4:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800046c8:	00004497          	auipc	s1,0x4
    800046cc:	3f04b483          	ld	s1,1008(s1) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800046d0:	00000713          	li	a4,0
    while(curr != 0)
    800046d4:	0a048e63          	beqz	s1,80004790 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    800046d8:	0004b783          	ld	a5,0(s1)
    800046dc:	00b7f863          	bgeu	a5,a1,800046ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800046e0:	00048713          	mv	a4,s1
        curr = curr->next;
    800046e4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800046e8:	fedff06f          	j	800046d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800046ec:	01058693          	addi	a3,a1,16
    800046f0:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800046f4:	01078613          	addi	a2,a5,16
    800046f8:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800046fc:	00004517          	auipc	a0,0x4
    80004700:	26c53503          	ld	a0,620(a0) # 80008968 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004704:	00053503          	ld	a0,0(a0)
    80004708:	06d56063          	bltu	a0,a3,80004768 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    8000470c:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004710:	01000813          	li	a6,16
    80004714:	02a87663          	bgeu	a6,a0,80004740 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004718:	0084b783          	ld	a5,8(s1)
    8000471c:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004720:	ff050513          	addi	a0,a0,-16
    80004724:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004728:	00070663          	beqz	a4,80004734 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    8000472c:	00d73423          	sd	a3,8(a4)
    80004730:	0400006f          	j	80004770 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004734:	00004797          	auipc	a5,0x4
    80004738:	38d7b223          	sd	a3,900(a5) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    8000473c:	0340006f          	j	80004770 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004740:	00070a63          	beqz	a4,80004754 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004744:	0084b683          	ld	a3,8(s1)
    80004748:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    8000474c:	00078593          	mv	a1,a5
    80004750:	0200006f          	j	80004770 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004754:	0084b703          	ld	a4,8(s1)
    80004758:	00004697          	auipc	a3,0x4
    8000475c:	36e6b023          	sd	a4,864(a3) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004760:	00078593          	mv	a1,a5
    80004764:	00c0006f          	j	80004770 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004768:	00070e63          	beqz	a4,80004784 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    8000476c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004770:	00048513          	mv	a0,s1
    80004774:	00000097          	auipc	ra,0x0
    80004778:	e5c080e7          	jalr	-420(ra) # 800045d0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000477c:	01048513          	addi	a0,s1,16
            break;
    80004780:	0140006f          	j	80004794 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004784:	00004797          	auipc	a5,0x4
    80004788:	3207ba23          	sd	zero,820(a5) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    8000478c:	fe5ff06f          	j	80004770 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004790:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004794:	01813083          	ld	ra,24(sp)
    80004798:	01013403          	ld	s0,16(sp)
    8000479c:	00813483          	ld	s1,8(sp)
    800047a0:	02010113          	addi	sp,sp,32
    800047a4:	00008067          	ret
        return nullptr;
    800047a8:	00000513          	li	a0,0
}
    800047ac:	00008067          	ret

00000000800047b0 <_ZN15MemoryAllocator9mem_allocEm>:
{
    800047b0:	ff010113          	addi	sp,sp,-16
    800047b4:	00113423          	sd	ra,8(sp)
    800047b8:	00813023          	sd	s0,0(sp)
    800047bc:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	ee4080e7          	jalr	-284(ra) # 800046a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800047c8:	00813083          	ld	ra,8(sp)
    800047cc:	00013403          	ld	s0,0(sp)
    800047d0:	01010113          	addi	sp,sp,16
    800047d4:	00008067          	ret

00000000800047d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800047d8:	ff010113          	addi	sp,sp,-16
    800047dc:	00813423          	sd	s0,8(sp)
    800047e0:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800047e4:	00004797          	auipc	a5,0x4
    800047e8:	2c47a783          	lw	a5,708(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800047ec:	06078263          	beqz	a5,80004850 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800047f0:	00004797          	auipc	a5,0x4
    800047f4:	2c87b783          	ld	a5,712(a5) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800047f8:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    800047fc:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004800:	00000713          	li	a4,0
    while(curr != 0)
    80004804:	00078c63          	beqz	a5,8000481c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004808:	00f56863          	bltu	a0,a5,80004818 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    8000480c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004810:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004814:	ff1ff06f          	j	80004804 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004818:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    8000481c:	04070063          	beqz	a4,8000485c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004820:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004824:	00853783          	ld	a5,8(a0)
    80004828:	00078a63          	beqz	a5,8000483c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    8000482c:	00053603          	ld	a2,0(a0)
    80004830:	01060693          	addi	a3,a2,16
    80004834:	00d506b3          	add	a3,a0,a3
    80004838:	02d78863          	beq	a5,a3,80004868 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    8000483c:	00070a63          	beqz	a4,80004850 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004840:	00073683          	ld	a3,0(a4)
    80004844:	01068793          	addi	a5,a3,16
    80004848:	00f707b3          	add	a5,a4,a5
    8000484c:	02a78c63          	beq	a5,a0,80004884 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004850:	00813403          	ld	s0,8(sp)
    80004854:	01010113          	addi	sp,sp,16
    80004858:	00008067          	ret
        headFree = newSegment;
    8000485c:	00004797          	auipc	a5,0x4
    80004860:	24a7be23          	sd	a0,604(a5) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    80004864:	fc1ff06f          	j	80004824 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004868:	0007b683          	ld	a3,0(a5)
    8000486c:	00d60633          	add	a2,a2,a3
    80004870:	01060613          	addi	a2,a2,16
    80004874:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004878:	0087b783          	ld	a5,8(a5)
    8000487c:	00f53423          	sd	a5,8(a0)
    80004880:	fbdff06f          	j	8000483c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004884:	00053783          	ld	a5,0(a0)
    80004888:	00f686b3          	add	a3,a3,a5
    8000488c:	01068693          	addi	a3,a3,16
    80004890:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004894:	00853783          	ld	a5,8(a0)
    80004898:	00f73423          	sd	a5,8(a4)
    8000489c:	fb5ff06f          	j	80004850 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

00000000800048a0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800048a0:	00004797          	auipc	a5,0x4
    800048a4:	2087a783          	lw	a5,520(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800048a8:	08078263          	beqz	a5,8000492c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00113c23          	sd	ra,24(sp)
    800048b4:	00813823          	sd	s0,16(sp)
    800048b8:	00913423          	sd	s1,8(sp)
    800048bc:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800048c0:	00004497          	auipc	s1,0x4
    800048c4:	1f04b483          	ld	s1,496(s1) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800048c8:	00000713          	li	a4,0
    while(curr != 0)
    800048cc:	02048a63          	beqz	s1,80004900 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800048d0:	01048793          	addi	a5,s1,16
    800048d4:	00a78863          	beq	a5,a0,800048e4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800048d8:	00048713          	mv	a4,s1
        curr = curr->next;
    800048dc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800048e0:	fedff06f          	j	800048cc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    800048e4:	02070c63          	beqz	a4,8000491c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    800048e8:	0084b783          	ld	a5,8(s1)
    800048ec:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800048f0:	0004b583          	ld	a1,0(s1)
    800048f4:	00048513          	mv	a0,s1
    800048f8:	00000097          	auipc	ra,0x0
    800048fc:	ee0080e7          	jalr	-288(ra) # 800047d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004900:	02048a63          	beqz	s1,80004934 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004904:	00000513          	li	a0,0
    else
        return 1;
}
    80004908:	01813083          	ld	ra,24(sp)
    8000490c:	01013403          	ld	s0,16(sp)
    80004910:	00813483          	ld	s1,8(sp)
    80004914:	02010113          	addi	sp,sp,32
    80004918:	00008067          	ret
                headAllocated = curr->next;
    8000491c:	0084b783          	ld	a5,8(s1)
    80004920:	00004717          	auipc	a4,0x4
    80004924:	18f73823          	sd	a5,400(a4) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    80004928:	fc9ff06f          	j	800048f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    8000492c:	00100513          	li	a0,1
}
    80004930:	00008067          	ret
        return 1;
    80004934:	00100513          	li	a0,1
    80004938:	fd1ff06f          	j	80004908 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

000000008000493c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    8000493c:	ff010113          	addi	sp,sp,-16
    80004940:	00113423          	sd	ra,8(sp)
    80004944:	00813023          	sd	s0,0(sp)
    80004948:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	f54080e7          	jalr	-172(ra) # 800048a0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004954:	00813083          	ld	ra,8(sp)
    80004958:	00013403          	ld	s0,0(sp)
    8000495c:	01010113          	addi	sp,sp,16
    80004960:	00008067          	ret

0000000080004964 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004964:	ff010113          	addi	sp,sp,-16
    80004968:	00113423          	sd	ra,8(sp)
    8000496c:	00813023          	sd	s0,0(sp)
    80004970:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004974:	00000097          	auipc	ra,0x0
    80004978:	e3c080e7          	jalr	-452(ra) # 800047b0 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000497c:	00813083          	ld	ra,8(sp)
    80004980:	00013403          	ld	s0,0(sp)
    80004984:	01010113          	addi	sp,sp,16
    80004988:	00008067          	ret

000000008000498c <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    8000498c:	ff010113          	addi	sp,sp,-16
    80004990:	00113423          	sd	ra,8(sp)
    80004994:	00813023          	sd	s0,0(sp)
    80004998:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    8000499c:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800049a0:	00651513          	slli	a0,a0,0x6
    800049a4:	00000097          	auipc	ra,0x0
    800049a8:	fc0080e7          	jalr	-64(ra) # 80004964 <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    800049ac:	02050063          	beqz	a0,800049cc <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800049b0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800049b4:	00000097          	auipc	ra,0x0
    800049b8:	87c080e7          	jalr	-1924(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    800049bc:	00813083          	ld	ra,8(sp)
    800049c0:	00013403          	ld	s0,0(sp)
    800049c4:	01010113          	addi	sp,sp,16
    800049c8:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800049cc:	00000513          	li	a0,0
    800049d0:	fe5ff06f          	j	800049b4 <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

00000000800049d4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800049d4:	ff010113          	addi	sp,sp,-16
    800049d8:	00113423          	sd	ra,8(sp)
    800049dc:	00813023          	sd	s0,0(sp)
    800049e0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800049e4:	00000097          	auipc	ra,0x0
    800049e8:	f58080e7          	jalr	-168(ra) # 8000493c <_ZN15MemoryAllocator8mem_freeEPv>
    800049ec:	00813083          	ld	ra,8(sp)
    800049f0:	00013403          	ld	s0,0(sp)
    800049f4:	01010113          	addi	sp,sp,16
    800049f8:	00008067          	ret

00000000800049fc <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800049fc:	ff010113          	addi	sp,sp,-16
    80004a00:	00113423          	sd	ra,8(sp)
    80004a04:	00813023          	sd	s0,0(sp)
    80004a08:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004a0c:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004a10:	00000097          	auipc	ra,0x0
    80004a14:	fc4080e7          	jalr	-60(ra) # 800049d4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004a18:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004a1c:	00000097          	auipc	ra,0x0
    80004a20:	814080e7          	jalr	-2028(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004a24:	00813083          	ld	ra,8(sp)
    80004a28:	00013403          	ld	s0,0(sp)
    80004a2c:	01010113          	addi	sp,sp,16
    80004a30:	00008067          	ret

0000000080004a34 <_Z12slabInitTestv>:
#include "../../h/slabTests.hpp"
#include "../../h/KConsole.hpp"

void slabInitTest()
{
    80004a34:	ff010113          	addi	sp,sp,-16
    80004a38:	00113423          	sd	ra,8(sp)
    80004a3c:	00813023          	sd	s0,0(sp)
    80004a40:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004a44:	00f00593          	li	a1,15
    80004a48:	00004797          	auipc	a5,0x4
    80004a4c:	e987b783          	ld	a5,-360(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004a50:	0007b503          	ld	a0,0(a5)
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	1b4080e7          	jalr	436(ra) # 80001c08 <_Z9kmem_initPvi>
}
    80004a5c:	00813083          	ld	ra,8(sp)
    80004a60:	00013403          	ld	s0,0(sp)
    80004a64:	01010113          	addi	sp,sp,16
    80004a68:	00008067          	ret

0000000080004a6c <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004a6c:	fe010113          	addi	sp,sp,-32
    80004a70:	00113c23          	sd	ra,24(sp)
    80004a74:	00813823          	sd	s0,16(sp)
    80004a78:	00913423          	sd	s1,8(sp)
    80004a7c:	01213023          	sd	s2,0(sp)
    80004a80:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004a84:	00f00593          	li	a1,15
    80004a88:	00004797          	auipc	a5,0x4
    80004a8c:	e587b783          	ld	a5,-424(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004a90:	0007b503          	ld	a0,0(a5)
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	174080e7          	jalr	372(ra) # 80001c08 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004a9c:	00000693          	li	a3,0
    80004aa0:	00000613          	li	a2,0
    80004aa4:	00a00593          	li	a1,10
    80004aa8:	00004517          	auipc	a0,0x4
    80004aac:	a4850513          	addi	a0,a0,-1464 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	2c8080e7          	jalr	712(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ab8:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004abc:	00000693          	li	a3,0
    80004ac0:	00000613          	li	a2,0
    80004ac4:	00a00593          	li	a1,10
    80004ac8:	00004517          	auipc	a0,0x4
    80004acc:	a3850513          	addi	a0,a0,-1480 # 80008500 <CONSOLE_STATUS+0x4f0>
    80004ad0:	ffffd097          	auipc	ra,0xffffd
    80004ad4:	2a8080e7          	jalr	680(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ad8:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004adc:	00000693          	li	a3,0
    80004ae0:	00000613          	li	a2,0
    80004ae4:	00a00593          	li	a1,10
    80004ae8:	00004517          	auipc	a0,0x4
    80004aec:	a2850513          	addi	a0,a0,-1496 # 80008510 <CONSOLE_STATUS+0x500>
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	288080e7          	jalr	648(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004af8:	00048a63          	beqz	s1,80004b0c <_Z19slabCacheCreateTestv+0xa0>
    80004afc:	00090863          	beqz	s2,80004b0c <_Z19slabCacheCreateTestv+0xa0>
    80004b00:	00050663          	beqz	a0,80004b0c <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	4c4080e7          	jalr	1220(ra) # 80001fc8 <_Z22printSlabAllocatorInfov>
}
    80004b0c:	01813083          	ld	ra,24(sp)
    80004b10:	01013403          	ld	s0,16(sp)
    80004b14:	00813483          	ld	s1,8(sp)
    80004b18:	00013903          	ld	s2,0(sp)
    80004b1c:	02010113          	addi	sp,sp,32
    80004b20:	00008067          	ret

0000000080004b24 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004b24:	fe010113          	addi	sp,sp,-32
    80004b28:	00113c23          	sd	ra,24(sp)
    80004b2c:	00813823          	sd	s0,16(sp)
    80004b30:	00913423          	sd	s1,8(sp)
    80004b34:	01213023          	sd	s2,0(sp)
    80004b38:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004b3c:	00f00593          	li	a1,15
    80004b40:	00004797          	auipc	a5,0x4
    80004b44:	da07b783          	ld	a5,-608(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004b48:	0007b503          	ld	a0,0(a5)
    80004b4c:	ffffd097          	auipc	ra,0xffffd
    80004b50:	0bc080e7          	jalr	188(ra) # 80001c08 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004b54:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004b58:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004b5c:	04400793          	li	a5,68
    80004b60:	0297c663          	blt	a5,s1,80004b8c <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004b64:	00000693          	li	a3,0
    80004b68:	00000613          	li	a2,0
    80004b6c:	00a00593          	li	a1,10
    80004b70:	00004517          	auipc	a0,0x4
    80004b74:	98050513          	addi	a0,a0,-1664 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	200080e7          	jalr	512(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004b80:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004b84:	0014849b          	addiw	s1,s1,1
    80004b88:	fd5ff06f          	j	80004b5c <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	43c080e7          	jalr	1084(ra) # 80001fc8 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004b94:	00090513          	mv	a0,s2
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	6c4080e7          	jalr	1732(ra) # 8000225c <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	428080e7          	jalr	1064(ra) # 80001fc8 <_Z22printSlabAllocatorInfov>
}
    80004ba8:	01813083          	ld	ra,24(sp)
    80004bac:	01013403          	ld	s0,16(sp)
    80004bb0:	00813483          	ld	s1,8(sp)
    80004bb4:	00013903          	ld	s2,0(sp)
    80004bb8:	02010113          	addi	sp,sp,32
    80004bbc:	00008067          	ret

0000000080004bc0 <_Z11testKmallocv>:

void testKmalloc()
{
    80004bc0:	fc010113          	addi	sp,sp,-64
    80004bc4:	02113c23          	sd	ra,56(sp)
    80004bc8:	02813823          	sd	s0,48(sp)
    80004bcc:	02913423          	sd	s1,40(sp)
    80004bd0:	03213023          	sd	s2,32(sp)
    80004bd4:	01313c23          	sd	s3,24(sp)
    80004bd8:	01413823          	sd	s4,16(sp)
    80004bdc:	01513423          	sd	s5,8(sp)
    80004be0:	04010413          	addi	s0,sp,64
    void** x = (void**)kmalloc(sizeof(void*)*200);
    80004be4:	64000513          	li	a0,1600
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	4c8080e7          	jalr	1224(ra) # 800020b0 <_Z7kmallocm>
    80004bf0:	00050a13          	mv	s4,a0
    int indeks = 0;
    for(int i = 0;i < 10;i++)
    80004bf4:	00000a93          	li	s5,0
    int indeks = 0;
    80004bf8:	00000493          	li	s1,0
    80004bfc:	0800006f          	j	80004c7c <_Z11testKmallocv+0xbc>
    {
        for(int j = 5;j<=18;j++)
    80004c00:	0019091b          	addiw	s2,s2,1
        {
            void* adr = kmalloc(1 << j);
            x[indeks++] = adr;
    80004c04:	00098493          	mv	s1,s3
        for(int j = 5;j<=18;j++)
    80004c08:	01200793          	li	a5,18
    80004c0c:	0727c663          	blt	a5,s2,80004c78 <_Z11testKmallocv+0xb8>
            void* adr = kmalloc(1 << j);
    80004c10:	00100513          	li	a0,1
    80004c14:	0125153b          	sllw	a0,a0,s2
    80004c18:	ffffd097          	auipc	ra,0xffffd
    80004c1c:	498080e7          	jalr	1176(ra) # 800020b0 <_Z7kmallocm>
            x[indeks++] = adr;
    80004c20:	0014899b          	addiw	s3,s1,1
    80004c24:	00349493          	slli	s1,s1,0x3
    80004c28:	009a04b3          	add	s1,s4,s1
    80004c2c:	00a4b023          	sd	a0,0(s1)
            if(adr == nullptr)
    80004c30:	fc0518e3          	bnez	a0,80004c00 <_Z11testKmallocv+0x40>
            {
                KConsole::trapPrintString("Nullptr je\n");
    80004c34:	00004517          	auipc	a0,0x4
    80004c38:	8ec50513          	addi	a0,a0,-1812 # 80008520 <CONSOLE_STATUS+0x510>
    80004c3c:	fffff097          	auipc	ra,0xfffff
    80004c40:	8e0080e7          	jalr	-1824(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
                KConsole::trapPrintStringInt("i ", i);
    80004c44:	00a00613          	li	a2,10
    80004c48:	000a8593          	mv	a1,s5
    80004c4c:	00004517          	auipc	a0,0x4
    80004c50:	8e450513          	addi	a0,a0,-1820 # 80008530 <CONSOLE_STATUS+0x520>
    80004c54:	fffff097          	auipc	ra,0xfffff
    80004c58:	9a0080e7          	jalr	-1632(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
                KConsole::trapPrintStringInt("j ", j);
    80004c5c:	00a00613          	li	a2,10
    80004c60:	00090593          	mv	a1,s2
    80004c64:	00004517          	auipc	a0,0x4
    80004c68:	8d450513          	addi	a0,a0,-1836 # 80008538 <CONSOLE_STATUS+0x528>
    80004c6c:	fffff097          	auipc	ra,0xfffff
    80004c70:	988080e7          	jalr	-1656(ra) # 800035f4 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    80004c74:	f8dff06f          	j	80004c00 <_Z11testKmallocv+0x40>
    for(int i = 0;i < 10;i++)
    80004c78:	001a8a9b          	addiw	s5,s5,1
    80004c7c:	00900793          	li	a5,9
    80004c80:	0157c663          	blt	a5,s5,80004c8c <_Z11testKmallocv+0xcc>
        for(int j = 5;j<=18;j++)
    80004c84:	00500913          	li	s2,5
    80004c88:	f81ff06f          	j	80004c08 <_Z11testKmallocv+0x48>
            }
        }
    }
    for(int i = 0; i < indeks;i++)
    80004c8c:	00000913          	li	s2,0
    80004c90:	02995063          	bge	s2,s1,80004cb0 <_Z11testKmallocv+0xf0>
    {
        kfree(x[i]);
    80004c94:	00391793          	slli	a5,s2,0x3
    80004c98:	00fa07b3          	add	a5,s4,a5
    80004c9c:	0007b503          	ld	a0,0(a5)
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	514080e7          	jalr	1300(ra) # 800021b4 <_Z5kfreePKv>
    for(int i = 0; i < indeks;i++)
    80004ca8:	0019091b          	addiw	s2,s2,1
    80004cac:	fe5ff06f          	j	80004c90 <_Z11testKmallocv+0xd0>
    }
    printSlabAllocatorInfo();
    80004cb0:	ffffd097          	auipc	ra,0xffffd
    80004cb4:	318080e7          	jalr	792(ra) # 80001fc8 <_Z22printSlabAllocatorInfov>
}
    80004cb8:	03813083          	ld	ra,56(sp)
    80004cbc:	03013403          	ld	s0,48(sp)
    80004cc0:	02813483          	ld	s1,40(sp)
    80004cc4:	02013903          	ld	s2,32(sp)
    80004cc8:	01813983          	ld	s3,24(sp)
    80004ccc:	01013a03          	ld	s4,16(sp)
    80004cd0:	00813a83          	ld	s5,8(sp)
    80004cd4:	04010113          	addi	sp,sp,64
    80004cd8:	00008067          	ret

0000000080004cdc <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    80004cdc:	ff010113          	addi	sp,sp,-16
    80004ce0:	00813423          	sd	s0,8(sp)
    80004ce4:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    80004ce8:	00000793          	li	a5,0
    80004cec:	00b7da63          	bge	a5,a1,80004d00 <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    80004cf0:	00f50733          	add	a4,a0,a5
    80004cf4:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    80004cf8:	0017879b          	addiw	a5,a5,1
    80004cfc:	ff1ff06f          	j	80004cec <_Z6memsetPKvii+0x10>
    }
}
    80004d00:	00813403          	ld	s0,8(sp)
    80004d04:	01010113          	addi	sp,sp,16
    80004d08:	00008067          	ret

0000000080004d0c <_Z9constructPv>:

void construct(void *data) {
    80004d0c:	ff010113          	addi	sp,sp,-16
    80004d10:	00113423          	sd	ra,8(sp)
    80004d14:	00813023          	sd	s0,0(sp)
    80004d18:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    80004d1c:	0a500613          	li	a2,165
    80004d20:	00700593          	li	a1,7
    80004d24:	00000097          	auipc	ra,0x0
    80004d28:	fb8080e7          	jalr	-72(ra) # 80004cdc <_Z6memsetPKvii>
}
    80004d2c:	00813083          	ld	ra,8(sp)
    80004d30:	00013403          	ld	s0,0(sp)
    80004d34:	01010113          	addi	sp,sp,16
    80004d38:	00008067          	ret

0000000080004d3c <_Z5checkPvm>:

int check(void *data, size_t size) {
    80004d3c:	ff010113          	addi	sp,sp,-16
    80004d40:	00813423          	sd	s0,8(sp)
    80004d44:	01010413          	addi	s0,sp,16
    80004d48:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80004d4c:	00000793          	li	a5,0
    int ret = 1;
    80004d50:	00100513          	li	a0,1
    80004d54:	0080006f          	j	80004d5c <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    80004d58:	00178793          	addi	a5,a5,1
    80004d5c:	00b7fe63          	bgeu	a5,a1,80004d78 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80004d60:	00f60733          	add	a4,a2,a5
    80004d64:	00074683          	lbu	a3,0(a4)
    80004d68:	0a500713          	li	a4,165
    80004d6c:	fee686e3          	beq	a3,a4,80004d58 <_Z5checkPvm+0x1c>
            ret = 0;
    80004d70:	00000513          	li	a0,0
    80004d74:	fe5ff06f          	j	80004d58 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80004d78:	00813403          	ld	s0,8(sp)
    80004d7c:	01010113          	addi	sp,sp,16
    80004d80:	00008067          	ret

0000000080004d84 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80004d84:	f8010113          	addi	sp,sp,-128
    80004d88:	06113c23          	sd	ra,120(sp)
    80004d8c:	06813823          	sd	s0,112(sp)
    80004d90:	06913423          	sd	s1,104(sp)
    80004d94:	07213023          	sd	s2,96(sp)
    80004d98:	05313c23          	sd	s3,88(sp)
    80004d9c:	05413823          	sd	s4,80(sp)
    80004da0:	05513423          	sd	s5,72(sp)
    80004da4:	05613023          	sd	s6,64(sp)
    80004da8:	03713c23          	sd	s7,56(sp)
    80004dac:	03813823          	sd	s8,48(sp)
    80004db0:	03913423          	sd	s9,40(sp)
    80004db4:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    80004db8:	00053c03          	ld	s8,0(a0)
    80004dbc:	f9843423          	sd	s8,-120(s0)
    80004dc0:	00853783          	ld	a5,8(a0)
    80004dc4:	f8f43823          	sd	a5,-112(s0)
    80004dc8:	01053783          	ld	a5,16(a0)
    80004dcc:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80004dd0:	000c079b          	sext.w	a5,s8
    80004dd4:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    80004dd8:	00379713          	slli	a4,a5,0x3
    80004ddc:	00004797          	auipc	a5,0x4
    80004de0:	ac478793          	addi	a5,a5,-1340 # 800088a0 <_ZL11CACHE_NAMES>
    80004de4:	00e787b3          	add	a5,a5,a4
    80004de8:	000c0b13          	mv	s6,s8
    80004dec:	00000693          	li	a3,0
    80004df0:	00000613          	li	a2,0
    80004df4:	000c0593          	mv	a1,s8
    80004df8:	0007b503          	ld	a0,0(a5)
    80004dfc:	ffffd097          	auipc	ra,0xffffd
    80004e00:	f7c080e7          	jalr	-132(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004e04:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80004e08:	f9842b83          	lw	s7,-104(s0)
    80004e0c:	004b9513          	slli	a0,s7,0x4
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	2a0080e7          	jalr	672(ra) # 800020b0 <_Z7kmallocm>
    80004e18:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80004e1c:	00000493          	li	s1,0
    int size = 0;
    80004e20:	00000993          	li	s3,0
    80004e24:	0380006f          	j	80004e5c <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80004e28:	00499913          	slli	s2,s3,0x4
    80004e2c:	012a8933          	add	s2,s5,s2
    80004e30:	000a0513          	mv	a0,s4
    80004e34:	ffffd097          	auipc	ra,0xffffd
    80004e38:	e0c080e7          	jalr	-500(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004e3c:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80004e40:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80004e44:	0a500613          	li	a2,165
    80004e48:	000c0593          	mv	a1,s8
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	e90080e7          	jalr	-368(ra) # 80004cdc <_Z6memsetPKvii>
        }
        size++;
    80004e54:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80004e58:	0014849b          	addiw	s1,s1,1
    80004e5c:	0574da63          	bge	s1,s7,80004eb0 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80004e60:	06400793          	li	a5,100
    80004e64:	02f4e7bb          	remw	a5,s1,a5
    80004e68:	fc0790e3          	bnez	a5,80004e28 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80004e6c:	f9043c83          	ld	s9,-112(s0)
    80004e70:	00499913          	slli	s2,s3,0x4
    80004e74:	012a8933          	add	s2,s5,s2
    80004e78:	000c8513          	mv	a0,s9
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	dc4080e7          	jalr	-572(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004e84:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    80004e88:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80004e8c:	00700593          	li	a1,7
    80004e90:	00000097          	auipc	ra,0x0
    80004e94:	eac080e7          	jalr	-340(ra) # 80004d3c <_Z5checkPvm>
    80004e98:	fa051ee3          	bnez	a0,80004e54 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80004e9c:	00003517          	auipc	a0,0x3
    80004ea0:	6a450513          	addi	a0,a0,1700 # 80008540 <CONSOLE_STATUS+0x530>
    80004ea4:	ffffe097          	auipc	ra,0xffffe
    80004ea8:	678080e7          	jalr	1656(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
    80004eac:	fa9ff06f          	j	80004e54 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80004eb0:	000a0513          	mv	a0,s4
    80004eb4:	ffffd097          	auipc	ra,0xffffd
    80004eb8:	fb8080e7          	jalr	-72(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80004ebc:	f9043503          	ld	a0,-112(s0)
    80004ec0:	ffffd097          	auipc	ra,0xffffd
    80004ec4:	fac080e7          	jalr	-84(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    80004ec8:	00000913          	li	s2,0
    80004ecc:	0300006f          	j	80004efc <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004ed0:	000b0593          	mv	a1,s6
    80004ed4:	0440006f          	j	80004f18 <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    80004ed8:	00003517          	auipc	a0,0x3
    80004edc:	66850513          	addi	a0,a0,1640 # 80008540 <CONSOLE_STATUS+0x530>
    80004ee0:	ffffe097          	auipc	ra,0xffffe
    80004ee4:	63c080e7          	jalr	1596(ra) # 8000351c <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    80004ee8:	0084b583          	ld	a1,8(s1)
    80004eec:	0004b503          	ld	a0,0(s1)
    80004ef0:	ffffd097          	auipc	ra,0xffffd
    80004ef4:	f2c080e7          	jalr	-212(ra) # 80001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80004ef8:	0019091b          	addiw	s2,s2,1
    80004efc:	03395663          	bge	s2,s3,80004f28 <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004f00:	00491493          	slli	s1,s2,0x4
    80004f04:	009a84b3          	add	s1,s5,s1
    80004f08:	0084b503          	ld	a0,8(s1)
    80004f0c:	0004b783          	ld	a5,0(s1)
    80004f10:	fd4780e3          	beq	a5,s4,80004ed0 <_Z4workPv+0x14c>
    80004f14:	00700593          	li	a1,7
    80004f18:	00000097          	auipc	ra,0x0
    80004f1c:	e24080e7          	jalr	-476(ra) # 80004d3c <_Z5checkPvm>
    80004f20:	fc0514e3          	bnez	a0,80004ee8 <_Z4workPv+0x164>
    80004f24:	fb5ff06f          	j	80004ed8 <_Z4workPv+0x154>
    }

    kmem_cache_info(cache);
    80004f28:	000a0513          	mv	a0,s4
    80004f2c:	ffffd097          	auipc	ra,0xffffd
    80004f30:	f40080e7          	jalr	-192(ra) # 80001e6c <_Z15kmem_cache_infoP12kmem_cache_s>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    80004f34:	000a8513          	mv	a0,s5
    80004f38:	ffffd097          	auipc	ra,0xffffd
    80004f3c:	27c080e7          	jalr	636(ra) # 800021b4 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80004f40:	000a0513          	mv	a0,s4
    80004f44:	ffffd097          	auipc	ra,0xffffd
    80004f48:	318080e7          	jalr	792(ra) # 8000225c <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    80004f4c:	07813083          	ld	ra,120(sp)
    80004f50:	07013403          	ld	s0,112(sp)
    80004f54:	06813483          	ld	s1,104(sp)
    80004f58:	06013903          	ld	s2,96(sp)
    80004f5c:	05813983          	ld	s3,88(sp)
    80004f60:	05013a03          	ld	s4,80(sp)
    80004f64:	04813a83          	ld	s5,72(sp)
    80004f68:	04013b03          	ld	s6,64(sp)
    80004f6c:	03813b83          	ld	s7,56(sp)
    80004f70:	03013c03          	ld	s8,48(sp)
    80004f74:	02813c83          	ld	s9,40(sp)
    80004f78:	08010113          	addi	sp,sp,128
    80004f7c:	00008067          	ret

0000000080004f80 <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80004f80:	fb010113          	addi	sp,sp,-80
    80004f84:	04113423          	sd	ra,72(sp)
    80004f88:	04813023          	sd	s0,64(sp)
    80004f8c:	02913c23          	sd	s1,56(sp)
    80004f90:	03213823          	sd	s2,48(sp)
    80004f94:	03313423          	sd	s3,40(sp)
    80004f98:	05010413          	addi	s0,sp,80
    80004f9c:	00050993          	mv	s3,a0
    80004fa0:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    80004fa4:	00000493          	li	s1,0
    80004fa8:	00400793          	li	a5,4
    80004fac:	0297c863          	blt	a5,s1,80004fdc <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    80004fb0:	00093783          	ld	a5,0(s2)
    80004fb4:	faf43c23          	sd	a5,-72(s0)
    80004fb8:	00893783          	ld	a5,8(s2)
    80004fbc:	fcf43023          	sd	a5,-64(s0)
    80004fc0:	01093783          	ld	a5,16(s2)
    80004fc4:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80004fc8:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80004fcc:	fb840513          	addi	a0,s0,-72
    80004fd0:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    80004fd4:	0014849b          	addiw	s1,s1,1
    80004fd8:	fd1ff06f          	j	80004fa8 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    80004fdc:	04813083          	ld	ra,72(sp)
    80004fe0:	04013403          	ld	s0,64(sp)
    80004fe4:	03813483          	ld	s1,56(sp)
    80004fe8:	03013903          	ld	s2,48(sp)
    80004fec:	02813983          	ld	s3,40(sp)
    80004ff0:	05010113          	addi	sp,sp,80
    80004ff4:	00008067          	ret

0000000080004ff8 <_Z7testOS2v>:

void testOS2()
{
    80004ff8:	fc010113          	addi	sp,sp,-64
    80004ffc:	02113c23          	sd	ra,56(sp)
    80005000:	02813823          	sd	s0,48(sp)
    80005004:	02913423          	sd	s1,40(sp)
    80005008:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    8000500c:	00000693          	li	a3,0
    80005010:	00000617          	auipc	a2,0x0
    80005014:	cfc60613          	addi	a2,a2,-772 # 80004d0c <_Z9constructPv>
    80005018:	00700593          	li	a1,7
    8000501c:	00003517          	auipc	a0,0x3
    80005020:	53c50513          	addi	a0,a0,1340 # 80008558 <CONSOLE_STATUS+0x548>
    80005024:	ffffd097          	auipc	ra,0xffffd
    80005028:	d54080e7          	jalr	-684(ra) # 80001d78 <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000502c:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    80005030:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    80005034:	3e800793          	li	a5,1000
    80005038:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    8000503c:	00500613          	li	a2,5
    80005040:	fc840593          	addi	a1,s0,-56
    80005044:	00000517          	auipc	a0,0x0
    80005048:	d4050513          	addi	a0,a0,-704 # 80004d84 <_Z4workPv>
    8000504c:	00000097          	auipc	ra,0x0
    80005050:	f34080e7          	jalr	-204(ra) # 80004f80 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    80005054:	00048513          	mv	a0,s1
    80005058:	ffffd097          	auipc	ra,0xffffd
    8000505c:	204080e7          	jalr	516(ra) # 8000225c <_Z18kmem_cache_destroyP12kmem_cache_s>
    80005060:	03813083          	ld	ra,56(sp)
    80005064:	03013403          	ld	s0,48(sp)
    80005068:	02813483          	ld	s1,40(sp)
    8000506c:	04010113          	addi	sp,sp,64
    80005070:	00008067          	ret

0000000080005074 <_ZN10KSemaphoreC1Ei>:
#include "../../h/KSemaphore.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/Riscv.hpp"
#include "../../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80005074:	ff010113          	addi	sp,sp,-16
    80005078:	00813423          	sd	s0,8(sp)
    8000507c:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80005080:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80005084:	00053423          	sd	zero,8(a0)
    80005088:	00053023          	sd	zero,0(a0)
}
    8000508c:	00813403          	ld	s0,8(sp)
    80005090:	01010113          	addi	sp,sp,16
    80005094:	00008067          	ret

0000000080005098 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80005098:	ff010113          	addi	sp,sp,-16
    8000509c:	00813423          	sd	s0,8(sp)
    800050a0:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800050a4:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800050a8:	00053783          	ld	a5,0(a0)
    800050ac:	00078e63          	beqz	a5,800050c8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800050b0:	00853783          	ld	a5,8(a0)
    800050b4:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800050b8:	00b53423          	sd	a1,8(a0)
    }
}
    800050bc:	00813403          	ld	s0,8(sp)
    800050c0:	01010113          	addi	sp,sp,16
    800050c4:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800050c8:	00b53423          	sd	a1,8(a0)
    800050cc:	00b53023          	sd	a1,0(a0)
    800050d0:	fedff06f          	j	800050bc <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800050d4 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800050d4:	ff010113          	addi	sp,sp,-16
    800050d8:	00113423          	sd	ra,8(sp)
    800050dc:	00813023          	sd	s0,0(sp)
    800050e0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800050e4:	00004797          	auipc	a5,0x4
    800050e8:	87c7b783          	ld	a5,-1924(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    800050ec:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800050f0:	00200793          	li	a5,2
    800050f4:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	fa0080e7          	jalr	-96(ra) # 80005098 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80005100:	ffffd097          	auipc	ra,0xffffd
    80005104:	358080e7          	jalr	856(ra) # 80002458 <_ZN3PCB8dispatchEv>
}
    80005108:	00813083          	ld	ra,8(sp)
    8000510c:	00013403          	ld	s0,0(sp)
    80005110:	01010113          	addi	sp,sp,16
    80005114:	00008067          	ret

0000000080005118 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80005118:	00004797          	auipc	a5,0x4
    8000511c:	8487b783          	ld	a5,-1976(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    80005120:	0007b783          	ld	a5,0(a5)
    80005124:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80005128:	01052783          	lw	a5,16(a0)
    8000512c:	fff7879b          	addiw	a5,a5,-1
    80005130:	00f52823          	sw	a5,16(a0)
    80005134:	02079713          	slli	a4,a5,0x20
    80005138:	00074663          	bltz	a4,80005144 <_ZN10KSemaphore4waitEv+0x2c>
}
    8000513c:	00000513          	li	a0,0
    80005140:	00008067          	ret
{
    80005144:	ff010113          	addi	sp,sp,-16
    80005148:	00113423          	sd	ra,8(sp)
    8000514c:	00813023          	sd	s0,0(sp)
    80005150:	01010413          	addi	s0,sp,16
        block();
    80005154:	00000097          	auipc	ra,0x0
    80005158:	f80080e7          	jalr	-128(ra) # 800050d4 <_ZN10KSemaphore5blockEv>
}
    8000515c:	00000513          	li	a0,0
    80005160:	00813083          	ld	ra,8(sp)
    80005164:	00013403          	ld	s0,0(sp)
    80005168:	01010113          	addi	sp,sp,16
    8000516c:	00008067          	ret

0000000080005170 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80005170:	ff010113          	addi	sp,sp,-16
    80005174:	00813423          	sd	s0,8(sp)
    80005178:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    8000517c:	00053503          	ld	a0,0(a0)
    80005180:	00813403          	ld	s0,8(sp)
    80005184:	01010113          	addi	sp,sp,16
    80005188:	00008067          	ret

000000008000518c <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    8000518c:	ff010113          	addi	sp,sp,-16
    80005190:	00813423          	sd	s0,8(sp)
    80005194:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005198:	00053783          	ld	a5,0(a0)
    8000519c:	00078c63          	beqz	a5,800051b4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800051a0:	0087b703          	ld	a4,8(a5)
    800051a4:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800051a8:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800051ac:	00053783          	ld	a5,0(a0)
    800051b0:	00078863          	beqz	a5,800051c0 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800051b4:	00813403          	ld	s0,8(sp)
    800051b8:	01010113          	addi	sp,sp,16
    800051bc:	00008067          	ret
        tailBlocked =0;
    800051c0:	00053423          	sd	zero,8(a0)
    800051c4:	ff1ff06f          	j	800051b4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800051c8 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800051c8:	fe010113          	addi	sp,sp,-32
    800051cc:	00113c23          	sd	ra,24(sp)
    800051d0:	00813823          	sd	s0,16(sp)
    800051d4:	00913423          	sd	s1,8(sp)
    800051d8:	01213023          	sd	s2,0(sp)
    800051dc:	02010413          	addi	s0,sp,32
    800051e0:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800051e4:	00090513          	mv	a0,s2
    800051e8:	00000097          	auipc	ra,0x0
    800051ec:	f88080e7          	jalr	-120(ra) # 80005170 <_ZN10KSemaphore15getFirstBlockedEv>
    800051f0:	00050493          	mv	s1,a0
    800051f4:	02050463          	beqz	a0,8000521c <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800051f8:	00090513          	mv	a0,s2
    800051fc:	00000097          	auipc	ra,0x0
    80005200:	f90080e7          	jalr	-112(ra) # 8000518c <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80005204:	00100793          	li	a5,1
    80005208:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    8000520c:	00048513          	mv	a0,s1
    80005210:	ffffe097          	auipc	ra,0xffffe
    80005214:	5c4080e7          	jalr	1476(ra) # 800037d4 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80005218:	fcdff06f          	j	800051e4 <_ZN10KSemaphoreD1Ev+0x1c>
}
    8000521c:	01813083          	ld	ra,24(sp)
    80005220:	01013403          	ld	s0,16(sp)
    80005224:	00813483          	ld	s1,8(sp)
    80005228:	00013903          	ld	s2,0(sp)
    8000522c:	02010113          	addi	sp,sp,32
    80005230:	00008067          	ret

0000000080005234 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80005234:	fe010113          	addi	sp,sp,-32
    80005238:	00113c23          	sd	ra,24(sp)
    8000523c:	00813823          	sd	s0,16(sp)
    80005240:	00913423          	sd	s1,8(sp)
    80005244:	01213023          	sd	s2,0(sp)
    80005248:	02010413          	addi	s0,sp,32
    8000524c:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005250:	00000097          	auipc	ra,0x0
    80005254:	f20080e7          	jalr	-224(ra) # 80005170 <_ZN10KSemaphore15getFirstBlockedEv>
    80005258:	00050493          	mv	s1,a0
    removeFirstBlocked();
    8000525c:	00090513          	mv	a0,s2
    80005260:	00000097          	auipc	ra,0x0
    80005264:	f2c080e7          	jalr	-212(ra) # 8000518c <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80005268:	00048863          	beqz	s1,80005278 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    8000526c:	00048513          	mv	a0,s1
    80005270:	ffffe097          	auipc	ra,0xffffe
    80005274:	564080e7          	jalr	1380(ra) # 800037d4 <_ZN9Scheduler3putEP3PCB>
    }
}
    80005278:	01813083          	ld	ra,24(sp)
    8000527c:	01013403          	ld	s0,16(sp)
    80005280:	00813483          	ld	s1,8(sp)
    80005284:	00013903          	ld	s2,0(sp)
    80005288:	02010113          	addi	sp,sp,32
    8000528c:	00008067          	ret

0000000080005290 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80005290:	01052783          	lw	a5,16(a0)
    80005294:	0017879b          	addiw	a5,a5,1
    80005298:	0007871b          	sext.w	a4,a5
    8000529c:	00f52823          	sw	a5,16(a0)
    800052a0:	00e05663          	blez	a4,800052ac <_ZN10KSemaphore6signalEv+0x1c>
}
    800052a4:	00000513          	li	a0,0
    800052a8:	00008067          	ret
uint64 KSemaphore::signal() {
    800052ac:	ff010113          	addi	sp,sp,-16
    800052b0:	00113423          	sd	ra,8(sp)
    800052b4:	00813023          	sd	s0,0(sp)
    800052b8:	01010413          	addi	s0,sp,16
        unblock();
    800052bc:	00000097          	auipc	ra,0x0
    800052c0:	f78080e7          	jalr	-136(ra) # 80005234 <_ZN10KSemaphore7unblockEv>
}
    800052c4:	00000513          	li	a0,0
    800052c8:	00813083          	ld	ra,8(sp)
    800052cc:	00013403          	ld	s0,0(sp)
    800052d0:	01010113          	addi	sp,sp,16
    800052d4:	00008067          	ret

00000000800052d8 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800052d8:	ff010113          	addi	sp,sp,-16
    800052dc:	00113423          	sd	ra,8(sp)
    800052e0:	00813023          	sd	s0,0(sp)
    800052e4:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    800052e8:	00003797          	auipc	a5,0x3
    800052ec:	6007b783          	ld	a5,1536(a5) # 800088e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800052f0:	0007b503          	ld	a0,0(a5)
    800052f4:	ffffd097          	auipc	ra,0xffffd
    800052f8:	94c080e7          	jalr	-1716(ra) # 80001c40 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800052fc:	00813083          	ld	ra,8(sp)
    80005300:	00013403          	ld	s0,0(sp)
    80005304:	01010113          	addi	sp,sp,16
    80005308:	00008067          	ret

000000008000530c <_ZN10KSemaphore14semOpenHandlerEv>:
{
    8000530c:	fd010113          	addi	sp,sp,-48
    80005310:	02113423          	sd	ra,40(sp)
    80005314:	02813023          	sd	s0,32(sp)
    80005318:	00913c23          	sd	s1,24(sp)
    8000531c:	01213823          	sd	s2,16(sp)
    80005320:	01313423          	sd	s3,8(sp)
    80005324:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005328:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000532c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80005330:	01800513          	li	a0,24
    80005334:	00000097          	auipc	ra,0x0
    80005338:	fa4080e7          	jalr	-92(ra) # 800052d8 <_ZN10KSemaphorenwEm>
    8000533c:	00050493          	mv	s1,a0
    80005340:	00050863          	beqz	a0,80005350 <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    80005344:	0009859b          	sext.w	a1,s3
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	d2c080e7          	jalr	-724(ra) # 80005074 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005350:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80005354:	02048663          	beqz	s1,80005380 <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    80005358:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000535c:	fffff097          	auipc	ra,0xfffff
    80005360:	ed4080e7          	jalr	-300(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005364:	02813083          	ld	ra,40(sp)
    80005368:	02013403          	ld	s0,32(sp)
    8000536c:	01813483          	ld	s1,24(sp)
    80005370:	01013903          	ld	s2,16(sp)
    80005374:	00813983          	ld	s3,8(sp)
    80005378:	03010113          	addi	sp,sp,48
    8000537c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80005380:	fff00513          	li	a0,-1
    80005384:	fd9ff06f          	j	8000535c <_ZN10KSemaphore14semOpenHandlerEv+0x50>

0000000080005388 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005388:	ff010113          	addi	sp,sp,-16
    8000538c:	00113423          	sd	ra,8(sp)
    80005390:	00813023          	sd	s0,0(sp)
    80005394:	01010413          	addi	s0,sp,16
    80005398:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    8000539c:	00003797          	auipc	a5,0x3
    800053a0:	54c7b783          	ld	a5,1356(a5) # 800088e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800053a4:	0007b503          	ld	a0,0(a5)
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	a74080e7          	jalr	-1420(ra) # 80001e1c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    800053b0:	00813083          	ld	ra,8(sp)
    800053b4:	00013403          	ld	s0,0(sp)
    800053b8:	01010113          	addi	sp,sp,16
    800053bc:	00008067          	ret

00000000800053c0 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800053c0:	ff010113          	addi	sp,sp,-16
    800053c4:	00113423          	sd	ra,8(sp)
    800053c8:	00813023          	sd	s0,0(sp)
    800053cc:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800053d0:	00058513          	mv	a0,a1
    kSem->wait();
    800053d4:	00000097          	auipc	ra,0x0
    800053d8:	d44080e7          	jalr	-700(ra) # 80005118 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800053dc:	00003797          	auipc	a5,0x3
    800053e0:	5847b783          	ld	a5,1412(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    800053e4:	0007b783          	ld	a5,0(a5)
    800053e8:	0587c783          	lbu	a5,88(a5)
    800053ec:	02078063          	beqz	a5,8000540c <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800053f0:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800053f4:	fffff097          	auipc	ra,0xfffff
    800053f8:	e3c080e7          	jalr	-452(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    800053fc:	00813083          	ld	ra,8(sp)
    80005400:	00013403          	ld	s0,0(sp)
    80005404:	01010113          	addi	sp,sp,16
    80005408:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    8000540c:	00000513          	li	a0,0
    80005410:	fe5ff06f          	j	800053f4 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005414 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005414:	ff010113          	addi	sp,sp,-16
    80005418:	00113423          	sd	ra,8(sp)
    8000541c:	00813023          	sd	s0,0(sp)
    80005420:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005424:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005428:	02050463          	beqz	a0,80005450 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    8000542c:	00000097          	auipc	ra,0x0
    80005430:	e64080e7          	jalr	-412(ra) # 80005290 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80005434:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005438:	fffff097          	auipc	ra,0xfffff
    8000543c:	df8080e7          	jalr	-520(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005440:	00813083          	ld	ra,8(sp)
    80005444:	00013403          	ld	s0,0(sp)
    80005448:	01010113          	addi	sp,sp,16
    8000544c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005450:	00100513          	li	a0,1
    80005454:	fe5ff06f          	j	80005438 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005458 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005458:	fe010113          	addi	sp,sp,-32
    8000545c:	00113c23          	sd	ra,24(sp)
    80005460:	00813823          	sd	s0,16(sp)
    80005464:	00913423          	sd	s1,8(sp)
    80005468:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000546c:	00058493          	mv	s1,a1
    delete kSem;
    80005470:	00048e63          	beqz	s1,8000548c <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80005474:	00048513          	mv	a0,s1
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	d50080e7          	jalr	-688(ra) # 800051c8 <_ZN10KSemaphoreD1Ev>
    80005480:	00048513          	mv	a0,s1
    80005484:	00000097          	auipc	ra,0x0
    80005488:	f04080e7          	jalr	-252(ra) # 80005388 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    8000548c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	da0080e7          	jalr	-608(ra) # 80004230 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005498:	01813083          	ld	ra,24(sp)
    8000549c:	01013403          	ld	s0,16(sp)
    800054a0:	00813483          	ld	s1,8(sp)
    800054a4:	02010113          	addi	sp,sp,32
    800054a8:	00008067          	ret

00000000800054ac <start>:
    800054ac:	ff010113          	addi	sp,sp,-16
    800054b0:	00813423          	sd	s0,8(sp)
    800054b4:	01010413          	addi	s0,sp,16
    800054b8:	300027f3          	csrr	a5,mstatus
    800054bc:	ffffe737          	lui	a4,0xffffe
    800054c0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef7ff>
    800054c4:	00e7f7b3          	and	a5,a5,a4
    800054c8:	00001737          	lui	a4,0x1
    800054cc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800054d0:	00e7e7b3          	or	a5,a5,a4
    800054d4:	30079073          	csrw	mstatus,a5
    800054d8:	00000797          	auipc	a5,0x0
    800054dc:	16078793          	addi	a5,a5,352 # 80005638 <system_main>
    800054e0:	34179073          	csrw	mepc,a5
    800054e4:	00000793          	li	a5,0
    800054e8:	18079073          	csrw	satp,a5
    800054ec:	000107b7          	lui	a5,0x10
    800054f0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800054f4:	30279073          	csrw	medeleg,a5
    800054f8:	30379073          	csrw	mideleg,a5
    800054fc:	104027f3          	csrr	a5,sie
    80005500:	2227e793          	ori	a5,a5,546
    80005504:	10479073          	csrw	sie,a5
    80005508:	fff00793          	li	a5,-1
    8000550c:	00a7d793          	srli	a5,a5,0xa
    80005510:	3b079073          	csrw	pmpaddr0,a5
    80005514:	00f00793          	li	a5,15
    80005518:	3a079073          	csrw	pmpcfg0,a5
    8000551c:	f14027f3          	csrr	a5,mhartid
    80005520:	0200c737          	lui	a4,0x200c
    80005524:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005528:	0007869b          	sext.w	a3,a5
    8000552c:	00269713          	slli	a4,a3,0x2
    80005530:	000f4637          	lui	a2,0xf4
    80005534:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005538:	00d70733          	add	a4,a4,a3
    8000553c:	0037979b          	slliw	a5,a5,0x3
    80005540:	020046b7          	lui	a3,0x2004
    80005544:	00d787b3          	add	a5,a5,a3
    80005548:	00c585b3          	add	a1,a1,a2
    8000554c:	00371693          	slli	a3,a4,0x3
    80005550:	00003717          	auipc	a4,0x3
    80005554:	57070713          	addi	a4,a4,1392 # 80008ac0 <timer_scratch>
    80005558:	00b7b023          	sd	a1,0(a5)
    8000555c:	00d70733          	add	a4,a4,a3
    80005560:	00f73c23          	sd	a5,24(a4)
    80005564:	02c73023          	sd	a2,32(a4)
    80005568:	34071073          	csrw	mscratch,a4
    8000556c:	00000797          	auipc	a5,0x0
    80005570:	6e478793          	addi	a5,a5,1764 # 80005c50 <timervec>
    80005574:	30579073          	csrw	mtvec,a5
    80005578:	300027f3          	csrr	a5,mstatus
    8000557c:	0087e793          	ori	a5,a5,8
    80005580:	30079073          	csrw	mstatus,a5
    80005584:	304027f3          	csrr	a5,mie
    80005588:	0807e793          	ori	a5,a5,128
    8000558c:	30479073          	csrw	mie,a5
    80005590:	f14027f3          	csrr	a5,mhartid
    80005594:	0007879b          	sext.w	a5,a5
    80005598:	00078213          	mv	tp,a5
    8000559c:	30200073          	mret
    800055a0:	00813403          	ld	s0,8(sp)
    800055a4:	01010113          	addi	sp,sp,16
    800055a8:	00008067          	ret

00000000800055ac <timerinit>:
    800055ac:	ff010113          	addi	sp,sp,-16
    800055b0:	00813423          	sd	s0,8(sp)
    800055b4:	01010413          	addi	s0,sp,16
    800055b8:	f14027f3          	csrr	a5,mhartid
    800055bc:	0200c737          	lui	a4,0x200c
    800055c0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800055c4:	0007869b          	sext.w	a3,a5
    800055c8:	00269713          	slli	a4,a3,0x2
    800055cc:	000f4637          	lui	a2,0xf4
    800055d0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800055d4:	00d70733          	add	a4,a4,a3
    800055d8:	0037979b          	slliw	a5,a5,0x3
    800055dc:	020046b7          	lui	a3,0x2004
    800055e0:	00d787b3          	add	a5,a5,a3
    800055e4:	00c585b3          	add	a1,a1,a2
    800055e8:	00371693          	slli	a3,a4,0x3
    800055ec:	00003717          	auipc	a4,0x3
    800055f0:	4d470713          	addi	a4,a4,1236 # 80008ac0 <timer_scratch>
    800055f4:	00b7b023          	sd	a1,0(a5)
    800055f8:	00d70733          	add	a4,a4,a3
    800055fc:	00f73c23          	sd	a5,24(a4)
    80005600:	02c73023          	sd	a2,32(a4)
    80005604:	34071073          	csrw	mscratch,a4
    80005608:	00000797          	auipc	a5,0x0
    8000560c:	64878793          	addi	a5,a5,1608 # 80005c50 <timervec>
    80005610:	30579073          	csrw	mtvec,a5
    80005614:	300027f3          	csrr	a5,mstatus
    80005618:	0087e793          	ori	a5,a5,8
    8000561c:	30079073          	csrw	mstatus,a5
    80005620:	304027f3          	csrr	a5,mie
    80005624:	0807e793          	ori	a5,a5,128
    80005628:	30479073          	csrw	mie,a5
    8000562c:	00813403          	ld	s0,8(sp)
    80005630:	01010113          	addi	sp,sp,16
    80005634:	00008067          	ret

0000000080005638 <system_main>:
    80005638:	fe010113          	addi	sp,sp,-32
    8000563c:	00813823          	sd	s0,16(sp)
    80005640:	00913423          	sd	s1,8(sp)
    80005644:	00113c23          	sd	ra,24(sp)
    80005648:	02010413          	addi	s0,sp,32
    8000564c:	00000097          	auipc	ra,0x0
    80005650:	0c4080e7          	jalr	196(ra) # 80005710 <cpuid>
    80005654:	00003497          	auipc	s1,0x3
    80005658:	34c48493          	addi	s1,s1,844 # 800089a0 <started>
    8000565c:	02050263          	beqz	a0,80005680 <system_main+0x48>
    80005660:	0004a783          	lw	a5,0(s1)
    80005664:	0007879b          	sext.w	a5,a5
    80005668:	fe078ce3          	beqz	a5,80005660 <system_main+0x28>
    8000566c:	0ff0000f          	fence
    80005670:	00003517          	auipc	a0,0x3
    80005674:	f5050513          	addi	a0,a0,-176 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005678:	00001097          	auipc	ra,0x1
    8000567c:	a74080e7          	jalr	-1420(ra) # 800060ec <panic>
    80005680:	00001097          	auipc	ra,0x1
    80005684:	9c8080e7          	jalr	-1592(ra) # 80006048 <consoleinit>
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	154080e7          	jalr	340(ra) # 800067dc <printfinit>
    80005690:	00003517          	auipc	a0,0x3
    80005694:	ae850513          	addi	a0,a0,-1304 # 80008178 <CONSOLE_STATUS+0x168>
    80005698:	00001097          	auipc	ra,0x1
    8000569c:	ab0080e7          	jalr	-1360(ra) # 80006148 <__printf>
    800056a0:	00003517          	auipc	a0,0x3
    800056a4:	ef050513          	addi	a0,a0,-272 # 80008590 <CONSOLE_STATUS+0x580>
    800056a8:	00001097          	auipc	ra,0x1
    800056ac:	aa0080e7          	jalr	-1376(ra) # 80006148 <__printf>
    800056b0:	00003517          	auipc	a0,0x3
    800056b4:	ac850513          	addi	a0,a0,-1336 # 80008178 <CONSOLE_STATUS+0x168>
    800056b8:	00001097          	auipc	ra,0x1
    800056bc:	a90080e7          	jalr	-1392(ra) # 80006148 <__printf>
    800056c0:	00001097          	auipc	ra,0x1
    800056c4:	4a8080e7          	jalr	1192(ra) # 80006b68 <kinit>
    800056c8:	00000097          	auipc	ra,0x0
    800056cc:	148080e7          	jalr	328(ra) # 80005810 <trapinit>
    800056d0:	00000097          	auipc	ra,0x0
    800056d4:	16c080e7          	jalr	364(ra) # 8000583c <trapinithart>
    800056d8:	00000097          	auipc	ra,0x0
    800056dc:	5b8080e7          	jalr	1464(ra) # 80005c90 <plicinit>
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	5d8080e7          	jalr	1496(ra) # 80005cb8 <plicinithart>
    800056e8:	00000097          	auipc	ra,0x0
    800056ec:	078080e7          	jalr	120(ra) # 80005760 <userinit>
    800056f0:	0ff0000f          	fence
    800056f4:	00100793          	li	a5,1
    800056f8:	00003517          	auipc	a0,0x3
    800056fc:	eb050513          	addi	a0,a0,-336 # 800085a8 <CONSOLE_STATUS+0x598>
    80005700:	00f4a023          	sw	a5,0(s1)
    80005704:	00001097          	auipc	ra,0x1
    80005708:	a44080e7          	jalr	-1468(ra) # 80006148 <__printf>
    8000570c:	0000006f          	j	8000570c <system_main+0xd4>

0000000080005710 <cpuid>:
    80005710:	ff010113          	addi	sp,sp,-16
    80005714:	00813423          	sd	s0,8(sp)
    80005718:	01010413          	addi	s0,sp,16
    8000571c:	00020513          	mv	a0,tp
    80005720:	00813403          	ld	s0,8(sp)
    80005724:	0005051b          	sext.w	a0,a0
    80005728:	01010113          	addi	sp,sp,16
    8000572c:	00008067          	ret

0000000080005730 <mycpu>:
    80005730:	ff010113          	addi	sp,sp,-16
    80005734:	00813423          	sd	s0,8(sp)
    80005738:	01010413          	addi	s0,sp,16
    8000573c:	00020793          	mv	a5,tp
    80005740:	00813403          	ld	s0,8(sp)
    80005744:	0007879b          	sext.w	a5,a5
    80005748:	00779793          	slli	a5,a5,0x7
    8000574c:	00004517          	auipc	a0,0x4
    80005750:	3a450513          	addi	a0,a0,932 # 80009af0 <cpus>
    80005754:	00f50533          	add	a0,a0,a5
    80005758:	01010113          	addi	sp,sp,16
    8000575c:	00008067          	ret

0000000080005760 <userinit>:
    80005760:	ff010113          	addi	sp,sp,-16
    80005764:	00813423          	sd	s0,8(sp)
    80005768:	01010413          	addi	s0,sp,16
    8000576c:	00813403          	ld	s0,8(sp)
    80005770:	01010113          	addi	sp,sp,16
    80005774:	ffffe317          	auipc	t1,0xffffe
    80005778:	16030067          	jr	352(t1) # 800038d4 <main>

000000008000577c <either_copyout>:
    8000577c:	ff010113          	addi	sp,sp,-16
    80005780:	00813023          	sd	s0,0(sp)
    80005784:	00113423          	sd	ra,8(sp)
    80005788:	01010413          	addi	s0,sp,16
    8000578c:	02051663          	bnez	a0,800057b8 <either_copyout+0x3c>
    80005790:	00058513          	mv	a0,a1
    80005794:	00060593          	mv	a1,a2
    80005798:	0006861b          	sext.w	a2,a3
    8000579c:	00002097          	auipc	ra,0x2
    800057a0:	c58080e7          	jalr	-936(ra) # 800073f4 <__memmove>
    800057a4:	00813083          	ld	ra,8(sp)
    800057a8:	00013403          	ld	s0,0(sp)
    800057ac:	00000513          	li	a0,0
    800057b0:	01010113          	addi	sp,sp,16
    800057b4:	00008067          	ret
    800057b8:	00003517          	auipc	a0,0x3
    800057bc:	e3050513          	addi	a0,a0,-464 # 800085e8 <CONSOLE_STATUS+0x5d8>
    800057c0:	00001097          	auipc	ra,0x1
    800057c4:	92c080e7          	jalr	-1748(ra) # 800060ec <panic>

00000000800057c8 <either_copyin>:
    800057c8:	ff010113          	addi	sp,sp,-16
    800057cc:	00813023          	sd	s0,0(sp)
    800057d0:	00113423          	sd	ra,8(sp)
    800057d4:	01010413          	addi	s0,sp,16
    800057d8:	02059463          	bnez	a1,80005800 <either_copyin+0x38>
    800057dc:	00060593          	mv	a1,a2
    800057e0:	0006861b          	sext.w	a2,a3
    800057e4:	00002097          	auipc	ra,0x2
    800057e8:	c10080e7          	jalr	-1008(ra) # 800073f4 <__memmove>
    800057ec:	00813083          	ld	ra,8(sp)
    800057f0:	00013403          	ld	s0,0(sp)
    800057f4:	00000513          	li	a0,0
    800057f8:	01010113          	addi	sp,sp,16
    800057fc:	00008067          	ret
    80005800:	00003517          	auipc	a0,0x3
    80005804:	e1050513          	addi	a0,a0,-496 # 80008610 <CONSOLE_STATUS+0x600>
    80005808:	00001097          	auipc	ra,0x1
    8000580c:	8e4080e7          	jalr	-1820(ra) # 800060ec <panic>

0000000080005810 <trapinit>:
    80005810:	ff010113          	addi	sp,sp,-16
    80005814:	00813423          	sd	s0,8(sp)
    80005818:	01010413          	addi	s0,sp,16
    8000581c:	00813403          	ld	s0,8(sp)
    80005820:	00003597          	auipc	a1,0x3
    80005824:	e1858593          	addi	a1,a1,-488 # 80008638 <CONSOLE_STATUS+0x628>
    80005828:	00004517          	auipc	a0,0x4
    8000582c:	34850513          	addi	a0,a0,840 # 80009b70 <tickslock>
    80005830:	01010113          	addi	sp,sp,16
    80005834:	00001317          	auipc	t1,0x1
    80005838:	5c430067          	jr	1476(t1) # 80006df8 <initlock>

000000008000583c <trapinithart>:
    8000583c:	ff010113          	addi	sp,sp,-16
    80005840:	00813423          	sd	s0,8(sp)
    80005844:	01010413          	addi	s0,sp,16
    80005848:	00000797          	auipc	a5,0x0
    8000584c:	2f878793          	addi	a5,a5,760 # 80005b40 <kernelvec>
    80005850:	10579073          	csrw	stvec,a5
    80005854:	00813403          	ld	s0,8(sp)
    80005858:	01010113          	addi	sp,sp,16
    8000585c:	00008067          	ret

0000000080005860 <usertrap>:
    80005860:	ff010113          	addi	sp,sp,-16
    80005864:	00813423          	sd	s0,8(sp)
    80005868:	01010413          	addi	s0,sp,16
    8000586c:	00813403          	ld	s0,8(sp)
    80005870:	01010113          	addi	sp,sp,16
    80005874:	00008067          	ret

0000000080005878 <usertrapret>:
    80005878:	ff010113          	addi	sp,sp,-16
    8000587c:	00813423          	sd	s0,8(sp)
    80005880:	01010413          	addi	s0,sp,16
    80005884:	00813403          	ld	s0,8(sp)
    80005888:	01010113          	addi	sp,sp,16
    8000588c:	00008067          	ret

0000000080005890 <kerneltrap>:
    80005890:	fe010113          	addi	sp,sp,-32
    80005894:	00813823          	sd	s0,16(sp)
    80005898:	00113c23          	sd	ra,24(sp)
    8000589c:	00913423          	sd	s1,8(sp)
    800058a0:	02010413          	addi	s0,sp,32
    800058a4:	142025f3          	csrr	a1,scause
    800058a8:	100027f3          	csrr	a5,sstatus
    800058ac:	0027f793          	andi	a5,a5,2
    800058b0:	10079c63          	bnez	a5,800059c8 <kerneltrap+0x138>
    800058b4:	142027f3          	csrr	a5,scause
    800058b8:	0207ce63          	bltz	a5,800058f4 <kerneltrap+0x64>
    800058bc:	00003517          	auipc	a0,0x3
    800058c0:	dc450513          	addi	a0,a0,-572 # 80008680 <CONSOLE_STATUS+0x670>
    800058c4:	00001097          	auipc	ra,0x1
    800058c8:	884080e7          	jalr	-1916(ra) # 80006148 <__printf>
    800058cc:	141025f3          	csrr	a1,sepc
    800058d0:	14302673          	csrr	a2,stval
    800058d4:	00003517          	auipc	a0,0x3
    800058d8:	dbc50513          	addi	a0,a0,-580 # 80008690 <CONSOLE_STATUS+0x680>
    800058dc:	00001097          	auipc	ra,0x1
    800058e0:	86c080e7          	jalr	-1940(ra) # 80006148 <__printf>
    800058e4:	00003517          	auipc	a0,0x3
    800058e8:	dc450513          	addi	a0,a0,-572 # 800086a8 <CONSOLE_STATUS+0x698>
    800058ec:	00001097          	auipc	ra,0x1
    800058f0:	800080e7          	jalr	-2048(ra) # 800060ec <panic>
    800058f4:	0ff7f713          	andi	a4,a5,255
    800058f8:	00900693          	li	a3,9
    800058fc:	04d70063          	beq	a4,a3,8000593c <kerneltrap+0xac>
    80005900:	fff00713          	li	a4,-1
    80005904:	03f71713          	slli	a4,a4,0x3f
    80005908:	00170713          	addi	a4,a4,1
    8000590c:	fae798e3          	bne	a5,a4,800058bc <kerneltrap+0x2c>
    80005910:	00000097          	auipc	ra,0x0
    80005914:	e00080e7          	jalr	-512(ra) # 80005710 <cpuid>
    80005918:	06050663          	beqz	a0,80005984 <kerneltrap+0xf4>
    8000591c:	144027f3          	csrr	a5,sip
    80005920:	ffd7f793          	andi	a5,a5,-3
    80005924:	14479073          	csrw	sip,a5
    80005928:	01813083          	ld	ra,24(sp)
    8000592c:	01013403          	ld	s0,16(sp)
    80005930:	00813483          	ld	s1,8(sp)
    80005934:	02010113          	addi	sp,sp,32
    80005938:	00008067          	ret
    8000593c:	00000097          	auipc	ra,0x0
    80005940:	3c8080e7          	jalr	968(ra) # 80005d04 <plic_claim>
    80005944:	00a00793          	li	a5,10
    80005948:	00050493          	mv	s1,a0
    8000594c:	06f50863          	beq	a0,a5,800059bc <kerneltrap+0x12c>
    80005950:	fc050ce3          	beqz	a0,80005928 <kerneltrap+0x98>
    80005954:	00050593          	mv	a1,a0
    80005958:	00003517          	auipc	a0,0x3
    8000595c:	d0850513          	addi	a0,a0,-760 # 80008660 <CONSOLE_STATUS+0x650>
    80005960:	00000097          	auipc	ra,0x0
    80005964:	7e8080e7          	jalr	2024(ra) # 80006148 <__printf>
    80005968:	01013403          	ld	s0,16(sp)
    8000596c:	01813083          	ld	ra,24(sp)
    80005970:	00048513          	mv	a0,s1
    80005974:	00813483          	ld	s1,8(sp)
    80005978:	02010113          	addi	sp,sp,32
    8000597c:	00000317          	auipc	t1,0x0
    80005980:	3c030067          	jr	960(t1) # 80005d3c <plic_complete>
    80005984:	00004517          	auipc	a0,0x4
    80005988:	1ec50513          	addi	a0,a0,492 # 80009b70 <tickslock>
    8000598c:	00001097          	auipc	ra,0x1
    80005990:	490080e7          	jalr	1168(ra) # 80006e1c <acquire>
    80005994:	00003717          	auipc	a4,0x3
    80005998:	01070713          	addi	a4,a4,16 # 800089a4 <ticks>
    8000599c:	00072783          	lw	a5,0(a4)
    800059a0:	00004517          	auipc	a0,0x4
    800059a4:	1d050513          	addi	a0,a0,464 # 80009b70 <tickslock>
    800059a8:	0017879b          	addiw	a5,a5,1
    800059ac:	00f72023          	sw	a5,0(a4)
    800059b0:	00001097          	auipc	ra,0x1
    800059b4:	538080e7          	jalr	1336(ra) # 80006ee8 <release>
    800059b8:	f65ff06f          	j	8000591c <kerneltrap+0x8c>
    800059bc:	00001097          	auipc	ra,0x1
    800059c0:	094080e7          	jalr	148(ra) # 80006a50 <uartintr>
    800059c4:	fa5ff06f          	j	80005968 <kerneltrap+0xd8>
    800059c8:	00003517          	auipc	a0,0x3
    800059cc:	c7850513          	addi	a0,a0,-904 # 80008640 <CONSOLE_STATUS+0x630>
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	71c080e7          	jalr	1820(ra) # 800060ec <panic>

00000000800059d8 <clockintr>:
    800059d8:	fe010113          	addi	sp,sp,-32
    800059dc:	00813823          	sd	s0,16(sp)
    800059e0:	00913423          	sd	s1,8(sp)
    800059e4:	00113c23          	sd	ra,24(sp)
    800059e8:	02010413          	addi	s0,sp,32
    800059ec:	00004497          	auipc	s1,0x4
    800059f0:	18448493          	addi	s1,s1,388 # 80009b70 <tickslock>
    800059f4:	00048513          	mv	a0,s1
    800059f8:	00001097          	auipc	ra,0x1
    800059fc:	424080e7          	jalr	1060(ra) # 80006e1c <acquire>
    80005a00:	00003717          	auipc	a4,0x3
    80005a04:	fa470713          	addi	a4,a4,-92 # 800089a4 <ticks>
    80005a08:	00072783          	lw	a5,0(a4)
    80005a0c:	01013403          	ld	s0,16(sp)
    80005a10:	01813083          	ld	ra,24(sp)
    80005a14:	00048513          	mv	a0,s1
    80005a18:	0017879b          	addiw	a5,a5,1
    80005a1c:	00813483          	ld	s1,8(sp)
    80005a20:	00f72023          	sw	a5,0(a4)
    80005a24:	02010113          	addi	sp,sp,32
    80005a28:	00001317          	auipc	t1,0x1
    80005a2c:	4c030067          	jr	1216(t1) # 80006ee8 <release>

0000000080005a30 <devintr>:
    80005a30:	142027f3          	csrr	a5,scause
    80005a34:	00000513          	li	a0,0
    80005a38:	0007c463          	bltz	a5,80005a40 <devintr+0x10>
    80005a3c:	00008067          	ret
    80005a40:	fe010113          	addi	sp,sp,-32
    80005a44:	00813823          	sd	s0,16(sp)
    80005a48:	00113c23          	sd	ra,24(sp)
    80005a4c:	00913423          	sd	s1,8(sp)
    80005a50:	02010413          	addi	s0,sp,32
    80005a54:	0ff7f713          	andi	a4,a5,255
    80005a58:	00900693          	li	a3,9
    80005a5c:	04d70c63          	beq	a4,a3,80005ab4 <devintr+0x84>
    80005a60:	fff00713          	li	a4,-1
    80005a64:	03f71713          	slli	a4,a4,0x3f
    80005a68:	00170713          	addi	a4,a4,1
    80005a6c:	00e78c63          	beq	a5,a4,80005a84 <devintr+0x54>
    80005a70:	01813083          	ld	ra,24(sp)
    80005a74:	01013403          	ld	s0,16(sp)
    80005a78:	00813483          	ld	s1,8(sp)
    80005a7c:	02010113          	addi	sp,sp,32
    80005a80:	00008067          	ret
    80005a84:	00000097          	auipc	ra,0x0
    80005a88:	c8c080e7          	jalr	-884(ra) # 80005710 <cpuid>
    80005a8c:	06050663          	beqz	a0,80005af8 <devintr+0xc8>
    80005a90:	144027f3          	csrr	a5,sip
    80005a94:	ffd7f793          	andi	a5,a5,-3
    80005a98:	14479073          	csrw	sip,a5
    80005a9c:	01813083          	ld	ra,24(sp)
    80005aa0:	01013403          	ld	s0,16(sp)
    80005aa4:	00813483          	ld	s1,8(sp)
    80005aa8:	00200513          	li	a0,2
    80005aac:	02010113          	addi	sp,sp,32
    80005ab0:	00008067          	ret
    80005ab4:	00000097          	auipc	ra,0x0
    80005ab8:	250080e7          	jalr	592(ra) # 80005d04 <plic_claim>
    80005abc:	00a00793          	li	a5,10
    80005ac0:	00050493          	mv	s1,a0
    80005ac4:	06f50663          	beq	a0,a5,80005b30 <devintr+0x100>
    80005ac8:	00100513          	li	a0,1
    80005acc:	fa0482e3          	beqz	s1,80005a70 <devintr+0x40>
    80005ad0:	00048593          	mv	a1,s1
    80005ad4:	00003517          	auipc	a0,0x3
    80005ad8:	b8c50513          	addi	a0,a0,-1140 # 80008660 <CONSOLE_STATUS+0x650>
    80005adc:	00000097          	auipc	ra,0x0
    80005ae0:	66c080e7          	jalr	1644(ra) # 80006148 <__printf>
    80005ae4:	00048513          	mv	a0,s1
    80005ae8:	00000097          	auipc	ra,0x0
    80005aec:	254080e7          	jalr	596(ra) # 80005d3c <plic_complete>
    80005af0:	00100513          	li	a0,1
    80005af4:	f7dff06f          	j	80005a70 <devintr+0x40>
    80005af8:	00004517          	auipc	a0,0x4
    80005afc:	07850513          	addi	a0,a0,120 # 80009b70 <tickslock>
    80005b00:	00001097          	auipc	ra,0x1
    80005b04:	31c080e7          	jalr	796(ra) # 80006e1c <acquire>
    80005b08:	00003717          	auipc	a4,0x3
    80005b0c:	e9c70713          	addi	a4,a4,-356 # 800089a4 <ticks>
    80005b10:	00072783          	lw	a5,0(a4)
    80005b14:	00004517          	auipc	a0,0x4
    80005b18:	05c50513          	addi	a0,a0,92 # 80009b70 <tickslock>
    80005b1c:	0017879b          	addiw	a5,a5,1
    80005b20:	00f72023          	sw	a5,0(a4)
    80005b24:	00001097          	auipc	ra,0x1
    80005b28:	3c4080e7          	jalr	964(ra) # 80006ee8 <release>
    80005b2c:	f65ff06f          	j	80005a90 <devintr+0x60>
    80005b30:	00001097          	auipc	ra,0x1
    80005b34:	f20080e7          	jalr	-224(ra) # 80006a50 <uartintr>
    80005b38:	fadff06f          	j	80005ae4 <devintr+0xb4>
    80005b3c:	0000                	unimp
	...

0000000080005b40 <kernelvec>:
    80005b40:	f0010113          	addi	sp,sp,-256
    80005b44:	00113023          	sd	ra,0(sp)
    80005b48:	00213423          	sd	sp,8(sp)
    80005b4c:	00313823          	sd	gp,16(sp)
    80005b50:	00413c23          	sd	tp,24(sp)
    80005b54:	02513023          	sd	t0,32(sp)
    80005b58:	02613423          	sd	t1,40(sp)
    80005b5c:	02713823          	sd	t2,48(sp)
    80005b60:	02813c23          	sd	s0,56(sp)
    80005b64:	04913023          	sd	s1,64(sp)
    80005b68:	04a13423          	sd	a0,72(sp)
    80005b6c:	04b13823          	sd	a1,80(sp)
    80005b70:	04c13c23          	sd	a2,88(sp)
    80005b74:	06d13023          	sd	a3,96(sp)
    80005b78:	06e13423          	sd	a4,104(sp)
    80005b7c:	06f13823          	sd	a5,112(sp)
    80005b80:	07013c23          	sd	a6,120(sp)
    80005b84:	09113023          	sd	a7,128(sp)
    80005b88:	09213423          	sd	s2,136(sp)
    80005b8c:	09313823          	sd	s3,144(sp)
    80005b90:	09413c23          	sd	s4,152(sp)
    80005b94:	0b513023          	sd	s5,160(sp)
    80005b98:	0b613423          	sd	s6,168(sp)
    80005b9c:	0b713823          	sd	s7,176(sp)
    80005ba0:	0b813c23          	sd	s8,184(sp)
    80005ba4:	0d913023          	sd	s9,192(sp)
    80005ba8:	0da13423          	sd	s10,200(sp)
    80005bac:	0db13823          	sd	s11,208(sp)
    80005bb0:	0dc13c23          	sd	t3,216(sp)
    80005bb4:	0fd13023          	sd	t4,224(sp)
    80005bb8:	0fe13423          	sd	t5,232(sp)
    80005bbc:	0ff13823          	sd	t6,240(sp)
    80005bc0:	cd1ff0ef          	jal	ra,80005890 <kerneltrap>
    80005bc4:	00013083          	ld	ra,0(sp)
    80005bc8:	00813103          	ld	sp,8(sp)
    80005bcc:	01013183          	ld	gp,16(sp)
    80005bd0:	02013283          	ld	t0,32(sp)
    80005bd4:	02813303          	ld	t1,40(sp)
    80005bd8:	03013383          	ld	t2,48(sp)
    80005bdc:	03813403          	ld	s0,56(sp)
    80005be0:	04013483          	ld	s1,64(sp)
    80005be4:	04813503          	ld	a0,72(sp)
    80005be8:	05013583          	ld	a1,80(sp)
    80005bec:	05813603          	ld	a2,88(sp)
    80005bf0:	06013683          	ld	a3,96(sp)
    80005bf4:	06813703          	ld	a4,104(sp)
    80005bf8:	07013783          	ld	a5,112(sp)
    80005bfc:	07813803          	ld	a6,120(sp)
    80005c00:	08013883          	ld	a7,128(sp)
    80005c04:	08813903          	ld	s2,136(sp)
    80005c08:	09013983          	ld	s3,144(sp)
    80005c0c:	09813a03          	ld	s4,152(sp)
    80005c10:	0a013a83          	ld	s5,160(sp)
    80005c14:	0a813b03          	ld	s6,168(sp)
    80005c18:	0b013b83          	ld	s7,176(sp)
    80005c1c:	0b813c03          	ld	s8,184(sp)
    80005c20:	0c013c83          	ld	s9,192(sp)
    80005c24:	0c813d03          	ld	s10,200(sp)
    80005c28:	0d013d83          	ld	s11,208(sp)
    80005c2c:	0d813e03          	ld	t3,216(sp)
    80005c30:	0e013e83          	ld	t4,224(sp)
    80005c34:	0e813f03          	ld	t5,232(sp)
    80005c38:	0f013f83          	ld	t6,240(sp)
    80005c3c:	10010113          	addi	sp,sp,256
    80005c40:	10200073          	sret
    80005c44:	00000013          	nop
    80005c48:	00000013          	nop
    80005c4c:	00000013          	nop

0000000080005c50 <timervec>:
    80005c50:	34051573          	csrrw	a0,mscratch,a0
    80005c54:	00b53023          	sd	a1,0(a0)
    80005c58:	00c53423          	sd	a2,8(a0)
    80005c5c:	00d53823          	sd	a3,16(a0)
    80005c60:	01853583          	ld	a1,24(a0)
    80005c64:	02053603          	ld	a2,32(a0)
    80005c68:	0005b683          	ld	a3,0(a1)
    80005c6c:	00c686b3          	add	a3,a3,a2
    80005c70:	00d5b023          	sd	a3,0(a1)
    80005c74:	00200593          	li	a1,2
    80005c78:	14459073          	csrw	sip,a1
    80005c7c:	01053683          	ld	a3,16(a0)
    80005c80:	00853603          	ld	a2,8(a0)
    80005c84:	00053583          	ld	a1,0(a0)
    80005c88:	34051573          	csrrw	a0,mscratch,a0
    80005c8c:	30200073          	mret

0000000080005c90 <plicinit>:
    80005c90:	ff010113          	addi	sp,sp,-16
    80005c94:	00813423          	sd	s0,8(sp)
    80005c98:	01010413          	addi	s0,sp,16
    80005c9c:	00813403          	ld	s0,8(sp)
    80005ca0:	0c0007b7          	lui	a5,0xc000
    80005ca4:	00100713          	li	a4,1
    80005ca8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005cac:	00e7a223          	sw	a4,4(a5)
    80005cb0:	01010113          	addi	sp,sp,16
    80005cb4:	00008067          	ret

0000000080005cb8 <plicinithart>:
    80005cb8:	ff010113          	addi	sp,sp,-16
    80005cbc:	00813023          	sd	s0,0(sp)
    80005cc0:	00113423          	sd	ra,8(sp)
    80005cc4:	01010413          	addi	s0,sp,16
    80005cc8:	00000097          	auipc	ra,0x0
    80005ccc:	a48080e7          	jalr	-1464(ra) # 80005710 <cpuid>
    80005cd0:	0085171b          	slliw	a4,a0,0x8
    80005cd4:	0c0027b7          	lui	a5,0xc002
    80005cd8:	00e787b3          	add	a5,a5,a4
    80005cdc:	40200713          	li	a4,1026
    80005ce0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005ce4:	00813083          	ld	ra,8(sp)
    80005ce8:	00013403          	ld	s0,0(sp)
    80005cec:	00d5151b          	slliw	a0,a0,0xd
    80005cf0:	0c2017b7          	lui	a5,0xc201
    80005cf4:	00a78533          	add	a0,a5,a0
    80005cf8:	00052023          	sw	zero,0(a0)
    80005cfc:	01010113          	addi	sp,sp,16
    80005d00:	00008067          	ret

0000000080005d04 <plic_claim>:
    80005d04:	ff010113          	addi	sp,sp,-16
    80005d08:	00813023          	sd	s0,0(sp)
    80005d0c:	00113423          	sd	ra,8(sp)
    80005d10:	01010413          	addi	s0,sp,16
    80005d14:	00000097          	auipc	ra,0x0
    80005d18:	9fc080e7          	jalr	-1540(ra) # 80005710 <cpuid>
    80005d1c:	00813083          	ld	ra,8(sp)
    80005d20:	00013403          	ld	s0,0(sp)
    80005d24:	00d5151b          	slliw	a0,a0,0xd
    80005d28:	0c2017b7          	lui	a5,0xc201
    80005d2c:	00a78533          	add	a0,a5,a0
    80005d30:	00452503          	lw	a0,4(a0)
    80005d34:	01010113          	addi	sp,sp,16
    80005d38:	00008067          	ret

0000000080005d3c <plic_complete>:
    80005d3c:	fe010113          	addi	sp,sp,-32
    80005d40:	00813823          	sd	s0,16(sp)
    80005d44:	00913423          	sd	s1,8(sp)
    80005d48:	00113c23          	sd	ra,24(sp)
    80005d4c:	02010413          	addi	s0,sp,32
    80005d50:	00050493          	mv	s1,a0
    80005d54:	00000097          	auipc	ra,0x0
    80005d58:	9bc080e7          	jalr	-1604(ra) # 80005710 <cpuid>
    80005d5c:	01813083          	ld	ra,24(sp)
    80005d60:	01013403          	ld	s0,16(sp)
    80005d64:	00d5179b          	slliw	a5,a0,0xd
    80005d68:	0c201737          	lui	a4,0xc201
    80005d6c:	00f707b3          	add	a5,a4,a5
    80005d70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005d74:	00813483          	ld	s1,8(sp)
    80005d78:	02010113          	addi	sp,sp,32
    80005d7c:	00008067          	ret

0000000080005d80 <consolewrite>:
    80005d80:	fb010113          	addi	sp,sp,-80
    80005d84:	04813023          	sd	s0,64(sp)
    80005d88:	04113423          	sd	ra,72(sp)
    80005d8c:	02913c23          	sd	s1,56(sp)
    80005d90:	03213823          	sd	s2,48(sp)
    80005d94:	03313423          	sd	s3,40(sp)
    80005d98:	03413023          	sd	s4,32(sp)
    80005d9c:	01513c23          	sd	s5,24(sp)
    80005da0:	05010413          	addi	s0,sp,80
    80005da4:	06c05c63          	blez	a2,80005e1c <consolewrite+0x9c>
    80005da8:	00060993          	mv	s3,a2
    80005dac:	00050a13          	mv	s4,a0
    80005db0:	00058493          	mv	s1,a1
    80005db4:	00000913          	li	s2,0
    80005db8:	fff00a93          	li	s5,-1
    80005dbc:	01c0006f          	j	80005dd8 <consolewrite+0x58>
    80005dc0:	fbf44503          	lbu	a0,-65(s0)
    80005dc4:	0019091b          	addiw	s2,s2,1
    80005dc8:	00148493          	addi	s1,s1,1
    80005dcc:	00001097          	auipc	ra,0x1
    80005dd0:	a9c080e7          	jalr	-1380(ra) # 80006868 <uartputc>
    80005dd4:	03298063          	beq	s3,s2,80005df4 <consolewrite+0x74>
    80005dd8:	00048613          	mv	a2,s1
    80005ddc:	00100693          	li	a3,1
    80005de0:	000a0593          	mv	a1,s4
    80005de4:	fbf40513          	addi	a0,s0,-65
    80005de8:	00000097          	auipc	ra,0x0
    80005dec:	9e0080e7          	jalr	-1568(ra) # 800057c8 <either_copyin>
    80005df0:	fd5518e3          	bne	a0,s5,80005dc0 <consolewrite+0x40>
    80005df4:	04813083          	ld	ra,72(sp)
    80005df8:	04013403          	ld	s0,64(sp)
    80005dfc:	03813483          	ld	s1,56(sp)
    80005e00:	02813983          	ld	s3,40(sp)
    80005e04:	02013a03          	ld	s4,32(sp)
    80005e08:	01813a83          	ld	s5,24(sp)
    80005e0c:	00090513          	mv	a0,s2
    80005e10:	03013903          	ld	s2,48(sp)
    80005e14:	05010113          	addi	sp,sp,80
    80005e18:	00008067          	ret
    80005e1c:	00000913          	li	s2,0
    80005e20:	fd5ff06f          	j	80005df4 <consolewrite+0x74>

0000000080005e24 <consoleread>:
    80005e24:	f9010113          	addi	sp,sp,-112
    80005e28:	06813023          	sd	s0,96(sp)
    80005e2c:	04913c23          	sd	s1,88(sp)
    80005e30:	05213823          	sd	s2,80(sp)
    80005e34:	05313423          	sd	s3,72(sp)
    80005e38:	05413023          	sd	s4,64(sp)
    80005e3c:	03513c23          	sd	s5,56(sp)
    80005e40:	03613823          	sd	s6,48(sp)
    80005e44:	03713423          	sd	s7,40(sp)
    80005e48:	03813023          	sd	s8,32(sp)
    80005e4c:	06113423          	sd	ra,104(sp)
    80005e50:	01913c23          	sd	s9,24(sp)
    80005e54:	07010413          	addi	s0,sp,112
    80005e58:	00060b93          	mv	s7,a2
    80005e5c:	00050913          	mv	s2,a0
    80005e60:	00058c13          	mv	s8,a1
    80005e64:	00060b1b          	sext.w	s6,a2
    80005e68:	00004497          	auipc	s1,0x4
    80005e6c:	d3048493          	addi	s1,s1,-720 # 80009b98 <cons>
    80005e70:	00400993          	li	s3,4
    80005e74:	fff00a13          	li	s4,-1
    80005e78:	00a00a93          	li	s5,10
    80005e7c:	05705e63          	blez	s7,80005ed8 <consoleread+0xb4>
    80005e80:	09c4a703          	lw	a4,156(s1)
    80005e84:	0984a783          	lw	a5,152(s1)
    80005e88:	0007071b          	sext.w	a4,a4
    80005e8c:	08e78463          	beq	a5,a4,80005f14 <consoleread+0xf0>
    80005e90:	07f7f713          	andi	a4,a5,127
    80005e94:	00e48733          	add	a4,s1,a4
    80005e98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005e9c:	0017869b          	addiw	a3,a5,1
    80005ea0:	08d4ac23          	sw	a3,152(s1)
    80005ea4:	00070c9b          	sext.w	s9,a4
    80005ea8:	0b370663          	beq	a4,s3,80005f54 <consoleread+0x130>
    80005eac:	00100693          	li	a3,1
    80005eb0:	f9f40613          	addi	a2,s0,-97
    80005eb4:	000c0593          	mv	a1,s8
    80005eb8:	00090513          	mv	a0,s2
    80005ebc:	f8e40fa3          	sb	a4,-97(s0)
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	8bc080e7          	jalr	-1860(ra) # 8000577c <either_copyout>
    80005ec8:	01450863          	beq	a0,s4,80005ed8 <consoleread+0xb4>
    80005ecc:	001c0c13          	addi	s8,s8,1
    80005ed0:	fffb8b9b          	addiw	s7,s7,-1
    80005ed4:	fb5c94e3          	bne	s9,s5,80005e7c <consoleread+0x58>
    80005ed8:	000b851b          	sext.w	a0,s7
    80005edc:	06813083          	ld	ra,104(sp)
    80005ee0:	06013403          	ld	s0,96(sp)
    80005ee4:	05813483          	ld	s1,88(sp)
    80005ee8:	05013903          	ld	s2,80(sp)
    80005eec:	04813983          	ld	s3,72(sp)
    80005ef0:	04013a03          	ld	s4,64(sp)
    80005ef4:	03813a83          	ld	s5,56(sp)
    80005ef8:	02813b83          	ld	s7,40(sp)
    80005efc:	02013c03          	ld	s8,32(sp)
    80005f00:	01813c83          	ld	s9,24(sp)
    80005f04:	40ab053b          	subw	a0,s6,a0
    80005f08:	03013b03          	ld	s6,48(sp)
    80005f0c:	07010113          	addi	sp,sp,112
    80005f10:	00008067          	ret
    80005f14:	00001097          	auipc	ra,0x1
    80005f18:	1d8080e7          	jalr	472(ra) # 800070ec <push_on>
    80005f1c:	0984a703          	lw	a4,152(s1)
    80005f20:	09c4a783          	lw	a5,156(s1)
    80005f24:	0007879b          	sext.w	a5,a5
    80005f28:	fef70ce3          	beq	a4,a5,80005f20 <consoleread+0xfc>
    80005f2c:	00001097          	auipc	ra,0x1
    80005f30:	234080e7          	jalr	564(ra) # 80007160 <pop_on>
    80005f34:	0984a783          	lw	a5,152(s1)
    80005f38:	07f7f713          	andi	a4,a5,127
    80005f3c:	00e48733          	add	a4,s1,a4
    80005f40:	01874703          	lbu	a4,24(a4)
    80005f44:	0017869b          	addiw	a3,a5,1
    80005f48:	08d4ac23          	sw	a3,152(s1)
    80005f4c:	00070c9b          	sext.w	s9,a4
    80005f50:	f5371ee3          	bne	a4,s3,80005eac <consoleread+0x88>
    80005f54:	000b851b          	sext.w	a0,s7
    80005f58:	f96bf2e3          	bgeu	s7,s6,80005edc <consoleread+0xb8>
    80005f5c:	08f4ac23          	sw	a5,152(s1)
    80005f60:	f7dff06f          	j	80005edc <consoleread+0xb8>

0000000080005f64 <consputc>:
    80005f64:	10000793          	li	a5,256
    80005f68:	00f50663          	beq	a0,a5,80005f74 <consputc+0x10>
    80005f6c:	00001317          	auipc	t1,0x1
    80005f70:	9f430067          	jr	-1548(t1) # 80006960 <uartputc_sync>
    80005f74:	ff010113          	addi	sp,sp,-16
    80005f78:	00113423          	sd	ra,8(sp)
    80005f7c:	00813023          	sd	s0,0(sp)
    80005f80:	01010413          	addi	s0,sp,16
    80005f84:	00800513          	li	a0,8
    80005f88:	00001097          	auipc	ra,0x1
    80005f8c:	9d8080e7          	jalr	-1576(ra) # 80006960 <uartputc_sync>
    80005f90:	02000513          	li	a0,32
    80005f94:	00001097          	auipc	ra,0x1
    80005f98:	9cc080e7          	jalr	-1588(ra) # 80006960 <uartputc_sync>
    80005f9c:	00013403          	ld	s0,0(sp)
    80005fa0:	00813083          	ld	ra,8(sp)
    80005fa4:	00800513          	li	a0,8
    80005fa8:	01010113          	addi	sp,sp,16
    80005fac:	00001317          	auipc	t1,0x1
    80005fb0:	9b430067          	jr	-1612(t1) # 80006960 <uartputc_sync>

0000000080005fb4 <consoleintr>:
    80005fb4:	fe010113          	addi	sp,sp,-32
    80005fb8:	00813823          	sd	s0,16(sp)
    80005fbc:	00913423          	sd	s1,8(sp)
    80005fc0:	01213023          	sd	s2,0(sp)
    80005fc4:	00113c23          	sd	ra,24(sp)
    80005fc8:	02010413          	addi	s0,sp,32
    80005fcc:	00004917          	auipc	s2,0x4
    80005fd0:	bcc90913          	addi	s2,s2,-1076 # 80009b98 <cons>
    80005fd4:	00050493          	mv	s1,a0
    80005fd8:	00090513          	mv	a0,s2
    80005fdc:	00001097          	auipc	ra,0x1
    80005fe0:	e40080e7          	jalr	-448(ra) # 80006e1c <acquire>
    80005fe4:	02048c63          	beqz	s1,8000601c <consoleintr+0x68>
    80005fe8:	0a092783          	lw	a5,160(s2)
    80005fec:	09892703          	lw	a4,152(s2)
    80005ff0:	07f00693          	li	a3,127
    80005ff4:	40e7873b          	subw	a4,a5,a4
    80005ff8:	02e6e263          	bltu	a3,a4,8000601c <consoleintr+0x68>
    80005ffc:	00d00713          	li	a4,13
    80006000:	04e48063          	beq	s1,a4,80006040 <consoleintr+0x8c>
    80006004:	07f7f713          	andi	a4,a5,127
    80006008:	00e90733          	add	a4,s2,a4
    8000600c:	0017879b          	addiw	a5,a5,1
    80006010:	0af92023          	sw	a5,160(s2)
    80006014:	00970c23          	sb	s1,24(a4)
    80006018:	08f92e23          	sw	a5,156(s2)
    8000601c:	01013403          	ld	s0,16(sp)
    80006020:	01813083          	ld	ra,24(sp)
    80006024:	00813483          	ld	s1,8(sp)
    80006028:	00013903          	ld	s2,0(sp)
    8000602c:	00004517          	auipc	a0,0x4
    80006030:	b6c50513          	addi	a0,a0,-1172 # 80009b98 <cons>
    80006034:	02010113          	addi	sp,sp,32
    80006038:	00001317          	auipc	t1,0x1
    8000603c:	eb030067          	jr	-336(t1) # 80006ee8 <release>
    80006040:	00a00493          	li	s1,10
    80006044:	fc1ff06f          	j	80006004 <consoleintr+0x50>

0000000080006048 <consoleinit>:
    80006048:	fe010113          	addi	sp,sp,-32
    8000604c:	00113c23          	sd	ra,24(sp)
    80006050:	00813823          	sd	s0,16(sp)
    80006054:	00913423          	sd	s1,8(sp)
    80006058:	02010413          	addi	s0,sp,32
    8000605c:	00004497          	auipc	s1,0x4
    80006060:	b3c48493          	addi	s1,s1,-1220 # 80009b98 <cons>
    80006064:	00048513          	mv	a0,s1
    80006068:	00002597          	auipc	a1,0x2
    8000606c:	65058593          	addi	a1,a1,1616 # 800086b8 <CONSOLE_STATUS+0x6a8>
    80006070:	00001097          	auipc	ra,0x1
    80006074:	d88080e7          	jalr	-632(ra) # 80006df8 <initlock>
    80006078:	00000097          	auipc	ra,0x0
    8000607c:	7ac080e7          	jalr	1964(ra) # 80006824 <uartinit>
    80006080:	01813083          	ld	ra,24(sp)
    80006084:	01013403          	ld	s0,16(sp)
    80006088:	00000797          	auipc	a5,0x0
    8000608c:	d9c78793          	addi	a5,a5,-612 # 80005e24 <consoleread>
    80006090:	0af4bc23          	sd	a5,184(s1)
    80006094:	00000797          	auipc	a5,0x0
    80006098:	cec78793          	addi	a5,a5,-788 # 80005d80 <consolewrite>
    8000609c:	0cf4b023          	sd	a5,192(s1)
    800060a0:	00813483          	ld	s1,8(sp)
    800060a4:	02010113          	addi	sp,sp,32
    800060a8:	00008067          	ret

00000000800060ac <console_read>:
    800060ac:	ff010113          	addi	sp,sp,-16
    800060b0:	00813423          	sd	s0,8(sp)
    800060b4:	01010413          	addi	s0,sp,16
    800060b8:	00813403          	ld	s0,8(sp)
    800060bc:	00004317          	auipc	t1,0x4
    800060c0:	b9433303          	ld	t1,-1132(t1) # 80009c50 <devsw+0x10>
    800060c4:	01010113          	addi	sp,sp,16
    800060c8:	00030067          	jr	t1

00000000800060cc <console_write>:
    800060cc:	ff010113          	addi	sp,sp,-16
    800060d0:	00813423          	sd	s0,8(sp)
    800060d4:	01010413          	addi	s0,sp,16
    800060d8:	00813403          	ld	s0,8(sp)
    800060dc:	00004317          	auipc	t1,0x4
    800060e0:	b7c33303          	ld	t1,-1156(t1) # 80009c58 <devsw+0x18>
    800060e4:	01010113          	addi	sp,sp,16
    800060e8:	00030067          	jr	t1

00000000800060ec <panic>:
    800060ec:	fe010113          	addi	sp,sp,-32
    800060f0:	00113c23          	sd	ra,24(sp)
    800060f4:	00813823          	sd	s0,16(sp)
    800060f8:	00913423          	sd	s1,8(sp)
    800060fc:	02010413          	addi	s0,sp,32
    80006100:	00050493          	mv	s1,a0
    80006104:	00002517          	auipc	a0,0x2
    80006108:	5bc50513          	addi	a0,a0,1468 # 800086c0 <CONSOLE_STATUS+0x6b0>
    8000610c:	00004797          	auipc	a5,0x4
    80006110:	be07a623          	sw	zero,-1044(a5) # 80009cf8 <pr+0x18>
    80006114:	00000097          	auipc	ra,0x0
    80006118:	034080e7          	jalr	52(ra) # 80006148 <__printf>
    8000611c:	00048513          	mv	a0,s1
    80006120:	00000097          	auipc	ra,0x0
    80006124:	028080e7          	jalr	40(ra) # 80006148 <__printf>
    80006128:	00002517          	auipc	a0,0x2
    8000612c:	05050513          	addi	a0,a0,80 # 80008178 <CONSOLE_STATUS+0x168>
    80006130:	00000097          	auipc	ra,0x0
    80006134:	018080e7          	jalr	24(ra) # 80006148 <__printf>
    80006138:	00100793          	li	a5,1
    8000613c:	00003717          	auipc	a4,0x3
    80006140:	86f72623          	sw	a5,-1940(a4) # 800089a8 <panicked>
    80006144:	0000006f          	j	80006144 <panic+0x58>

0000000080006148 <__printf>:
    80006148:	f3010113          	addi	sp,sp,-208
    8000614c:	08813023          	sd	s0,128(sp)
    80006150:	07313423          	sd	s3,104(sp)
    80006154:	09010413          	addi	s0,sp,144
    80006158:	05813023          	sd	s8,64(sp)
    8000615c:	08113423          	sd	ra,136(sp)
    80006160:	06913c23          	sd	s1,120(sp)
    80006164:	07213823          	sd	s2,112(sp)
    80006168:	07413023          	sd	s4,96(sp)
    8000616c:	05513c23          	sd	s5,88(sp)
    80006170:	05613823          	sd	s6,80(sp)
    80006174:	05713423          	sd	s7,72(sp)
    80006178:	03913c23          	sd	s9,56(sp)
    8000617c:	03a13823          	sd	s10,48(sp)
    80006180:	03b13423          	sd	s11,40(sp)
    80006184:	00004317          	auipc	t1,0x4
    80006188:	b5c30313          	addi	t1,t1,-1188 # 80009ce0 <pr>
    8000618c:	01832c03          	lw	s8,24(t1)
    80006190:	00b43423          	sd	a1,8(s0)
    80006194:	00c43823          	sd	a2,16(s0)
    80006198:	00d43c23          	sd	a3,24(s0)
    8000619c:	02e43023          	sd	a4,32(s0)
    800061a0:	02f43423          	sd	a5,40(s0)
    800061a4:	03043823          	sd	a6,48(s0)
    800061a8:	03143c23          	sd	a7,56(s0)
    800061ac:	00050993          	mv	s3,a0
    800061b0:	4a0c1663          	bnez	s8,8000665c <__printf+0x514>
    800061b4:	60098c63          	beqz	s3,800067cc <__printf+0x684>
    800061b8:	0009c503          	lbu	a0,0(s3)
    800061bc:	00840793          	addi	a5,s0,8
    800061c0:	f6f43c23          	sd	a5,-136(s0)
    800061c4:	00000493          	li	s1,0
    800061c8:	22050063          	beqz	a0,800063e8 <__printf+0x2a0>
    800061cc:	00002a37          	lui	s4,0x2
    800061d0:	00018ab7          	lui	s5,0x18
    800061d4:	000f4b37          	lui	s6,0xf4
    800061d8:	00989bb7          	lui	s7,0x989
    800061dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800061e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800061e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800061e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800061ec:	00148c9b          	addiw	s9,s1,1
    800061f0:	02500793          	li	a5,37
    800061f4:	01998933          	add	s2,s3,s9
    800061f8:	38f51263          	bne	a0,a5,8000657c <__printf+0x434>
    800061fc:	00094783          	lbu	a5,0(s2)
    80006200:	00078c9b          	sext.w	s9,a5
    80006204:	1e078263          	beqz	a5,800063e8 <__printf+0x2a0>
    80006208:	0024849b          	addiw	s1,s1,2
    8000620c:	07000713          	li	a4,112
    80006210:	00998933          	add	s2,s3,s1
    80006214:	38e78a63          	beq	a5,a4,800065a8 <__printf+0x460>
    80006218:	20f76863          	bltu	a4,a5,80006428 <__printf+0x2e0>
    8000621c:	42a78863          	beq	a5,a0,8000664c <__printf+0x504>
    80006220:	06400713          	li	a4,100
    80006224:	40e79663          	bne	a5,a4,80006630 <__printf+0x4e8>
    80006228:	f7843783          	ld	a5,-136(s0)
    8000622c:	0007a603          	lw	a2,0(a5)
    80006230:	00878793          	addi	a5,a5,8
    80006234:	f6f43c23          	sd	a5,-136(s0)
    80006238:	42064a63          	bltz	a2,8000666c <__printf+0x524>
    8000623c:	00a00713          	li	a4,10
    80006240:	02e677bb          	remuw	a5,a2,a4
    80006244:	00002d97          	auipc	s11,0x2
    80006248:	4a4d8d93          	addi	s11,s11,1188 # 800086e8 <digits>
    8000624c:	00900593          	li	a1,9
    80006250:	0006051b          	sext.w	a0,a2
    80006254:	00000c93          	li	s9,0
    80006258:	02079793          	slli	a5,a5,0x20
    8000625c:	0207d793          	srli	a5,a5,0x20
    80006260:	00fd87b3          	add	a5,s11,a5
    80006264:	0007c783          	lbu	a5,0(a5)
    80006268:	02e656bb          	divuw	a3,a2,a4
    8000626c:	f8f40023          	sb	a5,-128(s0)
    80006270:	14c5d863          	bge	a1,a2,800063c0 <__printf+0x278>
    80006274:	06300593          	li	a1,99
    80006278:	00100c93          	li	s9,1
    8000627c:	02e6f7bb          	remuw	a5,a3,a4
    80006280:	02079793          	slli	a5,a5,0x20
    80006284:	0207d793          	srli	a5,a5,0x20
    80006288:	00fd87b3          	add	a5,s11,a5
    8000628c:	0007c783          	lbu	a5,0(a5)
    80006290:	02e6d73b          	divuw	a4,a3,a4
    80006294:	f8f400a3          	sb	a5,-127(s0)
    80006298:	12a5f463          	bgeu	a1,a0,800063c0 <__printf+0x278>
    8000629c:	00a00693          	li	a3,10
    800062a0:	00900593          	li	a1,9
    800062a4:	02d777bb          	remuw	a5,a4,a3
    800062a8:	02079793          	slli	a5,a5,0x20
    800062ac:	0207d793          	srli	a5,a5,0x20
    800062b0:	00fd87b3          	add	a5,s11,a5
    800062b4:	0007c503          	lbu	a0,0(a5)
    800062b8:	02d757bb          	divuw	a5,a4,a3
    800062bc:	f8a40123          	sb	a0,-126(s0)
    800062c0:	48e5f263          	bgeu	a1,a4,80006744 <__printf+0x5fc>
    800062c4:	06300513          	li	a0,99
    800062c8:	02d7f5bb          	remuw	a1,a5,a3
    800062cc:	02059593          	slli	a1,a1,0x20
    800062d0:	0205d593          	srli	a1,a1,0x20
    800062d4:	00bd85b3          	add	a1,s11,a1
    800062d8:	0005c583          	lbu	a1,0(a1)
    800062dc:	02d7d7bb          	divuw	a5,a5,a3
    800062e0:	f8b401a3          	sb	a1,-125(s0)
    800062e4:	48e57263          	bgeu	a0,a4,80006768 <__printf+0x620>
    800062e8:	3e700513          	li	a0,999
    800062ec:	02d7f5bb          	remuw	a1,a5,a3
    800062f0:	02059593          	slli	a1,a1,0x20
    800062f4:	0205d593          	srli	a1,a1,0x20
    800062f8:	00bd85b3          	add	a1,s11,a1
    800062fc:	0005c583          	lbu	a1,0(a1)
    80006300:	02d7d7bb          	divuw	a5,a5,a3
    80006304:	f8b40223          	sb	a1,-124(s0)
    80006308:	46e57663          	bgeu	a0,a4,80006774 <__printf+0x62c>
    8000630c:	02d7f5bb          	remuw	a1,a5,a3
    80006310:	02059593          	slli	a1,a1,0x20
    80006314:	0205d593          	srli	a1,a1,0x20
    80006318:	00bd85b3          	add	a1,s11,a1
    8000631c:	0005c583          	lbu	a1,0(a1)
    80006320:	02d7d7bb          	divuw	a5,a5,a3
    80006324:	f8b402a3          	sb	a1,-123(s0)
    80006328:	46ea7863          	bgeu	s4,a4,80006798 <__printf+0x650>
    8000632c:	02d7f5bb          	remuw	a1,a5,a3
    80006330:	02059593          	slli	a1,a1,0x20
    80006334:	0205d593          	srli	a1,a1,0x20
    80006338:	00bd85b3          	add	a1,s11,a1
    8000633c:	0005c583          	lbu	a1,0(a1)
    80006340:	02d7d7bb          	divuw	a5,a5,a3
    80006344:	f8b40323          	sb	a1,-122(s0)
    80006348:	3eeaf863          	bgeu	s5,a4,80006738 <__printf+0x5f0>
    8000634c:	02d7f5bb          	remuw	a1,a5,a3
    80006350:	02059593          	slli	a1,a1,0x20
    80006354:	0205d593          	srli	a1,a1,0x20
    80006358:	00bd85b3          	add	a1,s11,a1
    8000635c:	0005c583          	lbu	a1,0(a1)
    80006360:	02d7d7bb          	divuw	a5,a5,a3
    80006364:	f8b403a3          	sb	a1,-121(s0)
    80006368:	42eb7e63          	bgeu	s6,a4,800067a4 <__printf+0x65c>
    8000636c:	02d7f5bb          	remuw	a1,a5,a3
    80006370:	02059593          	slli	a1,a1,0x20
    80006374:	0205d593          	srli	a1,a1,0x20
    80006378:	00bd85b3          	add	a1,s11,a1
    8000637c:	0005c583          	lbu	a1,0(a1)
    80006380:	02d7d7bb          	divuw	a5,a5,a3
    80006384:	f8b40423          	sb	a1,-120(s0)
    80006388:	42ebfc63          	bgeu	s7,a4,800067c0 <__printf+0x678>
    8000638c:	02079793          	slli	a5,a5,0x20
    80006390:	0207d793          	srli	a5,a5,0x20
    80006394:	00fd8db3          	add	s11,s11,a5
    80006398:	000dc703          	lbu	a4,0(s11)
    8000639c:	00a00793          	li	a5,10
    800063a0:	00900c93          	li	s9,9
    800063a4:	f8e404a3          	sb	a4,-119(s0)
    800063a8:	00065c63          	bgez	a2,800063c0 <__printf+0x278>
    800063ac:	f9040713          	addi	a4,s0,-112
    800063b0:	00f70733          	add	a4,a4,a5
    800063b4:	02d00693          	li	a3,45
    800063b8:	fed70823          	sb	a3,-16(a4)
    800063bc:	00078c93          	mv	s9,a5
    800063c0:	f8040793          	addi	a5,s0,-128
    800063c4:	01978cb3          	add	s9,a5,s9
    800063c8:	f7f40d13          	addi	s10,s0,-129
    800063cc:	000cc503          	lbu	a0,0(s9)
    800063d0:	fffc8c93          	addi	s9,s9,-1
    800063d4:	00000097          	auipc	ra,0x0
    800063d8:	b90080e7          	jalr	-1136(ra) # 80005f64 <consputc>
    800063dc:	ffac98e3          	bne	s9,s10,800063cc <__printf+0x284>
    800063e0:	00094503          	lbu	a0,0(s2)
    800063e4:	e00514e3          	bnez	a0,800061ec <__printf+0xa4>
    800063e8:	1a0c1663          	bnez	s8,80006594 <__printf+0x44c>
    800063ec:	08813083          	ld	ra,136(sp)
    800063f0:	08013403          	ld	s0,128(sp)
    800063f4:	07813483          	ld	s1,120(sp)
    800063f8:	07013903          	ld	s2,112(sp)
    800063fc:	06813983          	ld	s3,104(sp)
    80006400:	06013a03          	ld	s4,96(sp)
    80006404:	05813a83          	ld	s5,88(sp)
    80006408:	05013b03          	ld	s6,80(sp)
    8000640c:	04813b83          	ld	s7,72(sp)
    80006410:	04013c03          	ld	s8,64(sp)
    80006414:	03813c83          	ld	s9,56(sp)
    80006418:	03013d03          	ld	s10,48(sp)
    8000641c:	02813d83          	ld	s11,40(sp)
    80006420:	0d010113          	addi	sp,sp,208
    80006424:	00008067          	ret
    80006428:	07300713          	li	a4,115
    8000642c:	1ce78a63          	beq	a5,a4,80006600 <__printf+0x4b8>
    80006430:	07800713          	li	a4,120
    80006434:	1ee79e63          	bne	a5,a4,80006630 <__printf+0x4e8>
    80006438:	f7843783          	ld	a5,-136(s0)
    8000643c:	0007a703          	lw	a4,0(a5)
    80006440:	00878793          	addi	a5,a5,8
    80006444:	f6f43c23          	sd	a5,-136(s0)
    80006448:	28074263          	bltz	a4,800066cc <__printf+0x584>
    8000644c:	00002d97          	auipc	s11,0x2
    80006450:	29cd8d93          	addi	s11,s11,668 # 800086e8 <digits>
    80006454:	00f77793          	andi	a5,a4,15
    80006458:	00fd87b3          	add	a5,s11,a5
    8000645c:	0007c683          	lbu	a3,0(a5)
    80006460:	00f00613          	li	a2,15
    80006464:	0007079b          	sext.w	a5,a4
    80006468:	f8d40023          	sb	a3,-128(s0)
    8000646c:	0047559b          	srliw	a1,a4,0x4
    80006470:	0047569b          	srliw	a3,a4,0x4
    80006474:	00000c93          	li	s9,0
    80006478:	0ee65063          	bge	a2,a4,80006558 <__printf+0x410>
    8000647c:	00f6f693          	andi	a3,a3,15
    80006480:	00dd86b3          	add	a3,s11,a3
    80006484:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006488:	0087d79b          	srliw	a5,a5,0x8
    8000648c:	00100c93          	li	s9,1
    80006490:	f8d400a3          	sb	a3,-127(s0)
    80006494:	0cb67263          	bgeu	a2,a1,80006558 <__printf+0x410>
    80006498:	00f7f693          	andi	a3,a5,15
    8000649c:	00dd86b3          	add	a3,s11,a3
    800064a0:	0006c583          	lbu	a1,0(a3)
    800064a4:	00f00613          	li	a2,15
    800064a8:	0047d69b          	srliw	a3,a5,0x4
    800064ac:	f8b40123          	sb	a1,-126(s0)
    800064b0:	0047d593          	srli	a1,a5,0x4
    800064b4:	28f67e63          	bgeu	a2,a5,80006750 <__printf+0x608>
    800064b8:	00f6f693          	andi	a3,a3,15
    800064bc:	00dd86b3          	add	a3,s11,a3
    800064c0:	0006c503          	lbu	a0,0(a3)
    800064c4:	0087d813          	srli	a6,a5,0x8
    800064c8:	0087d69b          	srliw	a3,a5,0x8
    800064cc:	f8a401a3          	sb	a0,-125(s0)
    800064d0:	28b67663          	bgeu	a2,a1,8000675c <__printf+0x614>
    800064d4:	00f6f693          	andi	a3,a3,15
    800064d8:	00dd86b3          	add	a3,s11,a3
    800064dc:	0006c583          	lbu	a1,0(a3)
    800064e0:	00c7d513          	srli	a0,a5,0xc
    800064e4:	00c7d69b          	srliw	a3,a5,0xc
    800064e8:	f8b40223          	sb	a1,-124(s0)
    800064ec:	29067a63          	bgeu	a2,a6,80006780 <__printf+0x638>
    800064f0:	00f6f693          	andi	a3,a3,15
    800064f4:	00dd86b3          	add	a3,s11,a3
    800064f8:	0006c583          	lbu	a1,0(a3)
    800064fc:	0107d813          	srli	a6,a5,0x10
    80006500:	0107d69b          	srliw	a3,a5,0x10
    80006504:	f8b402a3          	sb	a1,-123(s0)
    80006508:	28a67263          	bgeu	a2,a0,8000678c <__printf+0x644>
    8000650c:	00f6f693          	andi	a3,a3,15
    80006510:	00dd86b3          	add	a3,s11,a3
    80006514:	0006c683          	lbu	a3,0(a3)
    80006518:	0147d79b          	srliw	a5,a5,0x14
    8000651c:	f8d40323          	sb	a3,-122(s0)
    80006520:	21067663          	bgeu	a2,a6,8000672c <__printf+0x5e4>
    80006524:	02079793          	slli	a5,a5,0x20
    80006528:	0207d793          	srli	a5,a5,0x20
    8000652c:	00fd8db3          	add	s11,s11,a5
    80006530:	000dc683          	lbu	a3,0(s11)
    80006534:	00800793          	li	a5,8
    80006538:	00700c93          	li	s9,7
    8000653c:	f8d403a3          	sb	a3,-121(s0)
    80006540:	00075c63          	bgez	a4,80006558 <__printf+0x410>
    80006544:	f9040713          	addi	a4,s0,-112
    80006548:	00f70733          	add	a4,a4,a5
    8000654c:	02d00693          	li	a3,45
    80006550:	fed70823          	sb	a3,-16(a4)
    80006554:	00078c93          	mv	s9,a5
    80006558:	f8040793          	addi	a5,s0,-128
    8000655c:	01978cb3          	add	s9,a5,s9
    80006560:	f7f40d13          	addi	s10,s0,-129
    80006564:	000cc503          	lbu	a0,0(s9)
    80006568:	fffc8c93          	addi	s9,s9,-1
    8000656c:	00000097          	auipc	ra,0x0
    80006570:	9f8080e7          	jalr	-1544(ra) # 80005f64 <consputc>
    80006574:	ff9d18e3          	bne	s10,s9,80006564 <__printf+0x41c>
    80006578:	0100006f          	j	80006588 <__printf+0x440>
    8000657c:	00000097          	auipc	ra,0x0
    80006580:	9e8080e7          	jalr	-1560(ra) # 80005f64 <consputc>
    80006584:	000c8493          	mv	s1,s9
    80006588:	00094503          	lbu	a0,0(s2)
    8000658c:	c60510e3          	bnez	a0,800061ec <__printf+0xa4>
    80006590:	e40c0ee3          	beqz	s8,800063ec <__printf+0x2a4>
    80006594:	00003517          	auipc	a0,0x3
    80006598:	74c50513          	addi	a0,a0,1868 # 80009ce0 <pr>
    8000659c:	00001097          	auipc	ra,0x1
    800065a0:	94c080e7          	jalr	-1716(ra) # 80006ee8 <release>
    800065a4:	e49ff06f          	j	800063ec <__printf+0x2a4>
    800065a8:	f7843783          	ld	a5,-136(s0)
    800065ac:	03000513          	li	a0,48
    800065b0:	01000d13          	li	s10,16
    800065b4:	00878713          	addi	a4,a5,8
    800065b8:	0007bc83          	ld	s9,0(a5)
    800065bc:	f6e43c23          	sd	a4,-136(s0)
    800065c0:	00000097          	auipc	ra,0x0
    800065c4:	9a4080e7          	jalr	-1628(ra) # 80005f64 <consputc>
    800065c8:	07800513          	li	a0,120
    800065cc:	00000097          	auipc	ra,0x0
    800065d0:	998080e7          	jalr	-1640(ra) # 80005f64 <consputc>
    800065d4:	00002d97          	auipc	s11,0x2
    800065d8:	114d8d93          	addi	s11,s11,276 # 800086e8 <digits>
    800065dc:	03ccd793          	srli	a5,s9,0x3c
    800065e0:	00fd87b3          	add	a5,s11,a5
    800065e4:	0007c503          	lbu	a0,0(a5)
    800065e8:	fffd0d1b          	addiw	s10,s10,-1
    800065ec:	004c9c93          	slli	s9,s9,0x4
    800065f0:	00000097          	auipc	ra,0x0
    800065f4:	974080e7          	jalr	-1676(ra) # 80005f64 <consputc>
    800065f8:	fe0d12e3          	bnez	s10,800065dc <__printf+0x494>
    800065fc:	f8dff06f          	j	80006588 <__printf+0x440>
    80006600:	f7843783          	ld	a5,-136(s0)
    80006604:	0007bc83          	ld	s9,0(a5)
    80006608:	00878793          	addi	a5,a5,8
    8000660c:	f6f43c23          	sd	a5,-136(s0)
    80006610:	000c9a63          	bnez	s9,80006624 <__printf+0x4dc>
    80006614:	1080006f          	j	8000671c <__printf+0x5d4>
    80006618:	001c8c93          	addi	s9,s9,1
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	948080e7          	jalr	-1720(ra) # 80005f64 <consputc>
    80006624:	000cc503          	lbu	a0,0(s9)
    80006628:	fe0518e3          	bnez	a0,80006618 <__printf+0x4d0>
    8000662c:	f5dff06f          	j	80006588 <__printf+0x440>
    80006630:	02500513          	li	a0,37
    80006634:	00000097          	auipc	ra,0x0
    80006638:	930080e7          	jalr	-1744(ra) # 80005f64 <consputc>
    8000663c:	000c8513          	mv	a0,s9
    80006640:	00000097          	auipc	ra,0x0
    80006644:	924080e7          	jalr	-1756(ra) # 80005f64 <consputc>
    80006648:	f41ff06f          	j	80006588 <__printf+0x440>
    8000664c:	02500513          	li	a0,37
    80006650:	00000097          	auipc	ra,0x0
    80006654:	914080e7          	jalr	-1772(ra) # 80005f64 <consputc>
    80006658:	f31ff06f          	j	80006588 <__printf+0x440>
    8000665c:	00030513          	mv	a0,t1
    80006660:	00000097          	auipc	ra,0x0
    80006664:	7bc080e7          	jalr	1980(ra) # 80006e1c <acquire>
    80006668:	b4dff06f          	j	800061b4 <__printf+0x6c>
    8000666c:	40c0053b          	negw	a0,a2
    80006670:	00a00713          	li	a4,10
    80006674:	02e576bb          	remuw	a3,a0,a4
    80006678:	00002d97          	auipc	s11,0x2
    8000667c:	070d8d93          	addi	s11,s11,112 # 800086e8 <digits>
    80006680:	ff700593          	li	a1,-9
    80006684:	02069693          	slli	a3,a3,0x20
    80006688:	0206d693          	srli	a3,a3,0x20
    8000668c:	00dd86b3          	add	a3,s11,a3
    80006690:	0006c683          	lbu	a3,0(a3)
    80006694:	02e557bb          	divuw	a5,a0,a4
    80006698:	f8d40023          	sb	a3,-128(s0)
    8000669c:	10b65e63          	bge	a2,a1,800067b8 <__printf+0x670>
    800066a0:	06300593          	li	a1,99
    800066a4:	02e7f6bb          	remuw	a3,a5,a4
    800066a8:	02069693          	slli	a3,a3,0x20
    800066ac:	0206d693          	srli	a3,a3,0x20
    800066b0:	00dd86b3          	add	a3,s11,a3
    800066b4:	0006c683          	lbu	a3,0(a3)
    800066b8:	02e7d73b          	divuw	a4,a5,a4
    800066bc:	00200793          	li	a5,2
    800066c0:	f8d400a3          	sb	a3,-127(s0)
    800066c4:	bca5ece3          	bltu	a1,a0,8000629c <__printf+0x154>
    800066c8:	ce5ff06f          	j	800063ac <__printf+0x264>
    800066cc:	40e007bb          	negw	a5,a4
    800066d0:	00002d97          	auipc	s11,0x2
    800066d4:	018d8d93          	addi	s11,s11,24 # 800086e8 <digits>
    800066d8:	00f7f693          	andi	a3,a5,15
    800066dc:	00dd86b3          	add	a3,s11,a3
    800066e0:	0006c583          	lbu	a1,0(a3)
    800066e4:	ff100613          	li	a2,-15
    800066e8:	0047d69b          	srliw	a3,a5,0x4
    800066ec:	f8b40023          	sb	a1,-128(s0)
    800066f0:	0047d59b          	srliw	a1,a5,0x4
    800066f4:	0ac75e63          	bge	a4,a2,800067b0 <__printf+0x668>
    800066f8:	00f6f693          	andi	a3,a3,15
    800066fc:	00dd86b3          	add	a3,s11,a3
    80006700:	0006c603          	lbu	a2,0(a3)
    80006704:	00f00693          	li	a3,15
    80006708:	0087d79b          	srliw	a5,a5,0x8
    8000670c:	f8c400a3          	sb	a2,-127(s0)
    80006710:	d8b6e4e3          	bltu	a3,a1,80006498 <__printf+0x350>
    80006714:	00200793          	li	a5,2
    80006718:	e2dff06f          	j	80006544 <__printf+0x3fc>
    8000671c:	00002c97          	auipc	s9,0x2
    80006720:	facc8c93          	addi	s9,s9,-84 # 800086c8 <CONSOLE_STATUS+0x6b8>
    80006724:	02800513          	li	a0,40
    80006728:	ef1ff06f          	j	80006618 <__printf+0x4d0>
    8000672c:	00700793          	li	a5,7
    80006730:	00600c93          	li	s9,6
    80006734:	e0dff06f          	j	80006540 <__printf+0x3f8>
    80006738:	00700793          	li	a5,7
    8000673c:	00600c93          	li	s9,6
    80006740:	c69ff06f          	j	800063a8 <__printf+0x260>
    80006744:	00300793          	li	a5,3
    80006748:	00200c93          	li	s9,2
    8000674c:	c5dff06f          	j	800063a8 <__printf+0x260>
    80006750:	00300793          	li	a5,3
    80006754:	00200c93          	li	s9,2
    80006758:	de9ff06f          	j	80006540 <__printf+0x3f8>
    8000675c:	00400793          	li	a5,4
    80006760:	00300c93          	li	s9,3
    80006764:	dddff06f          	j	80006540 <__printf+0x3f8>
    80006768:	00400793          	li	a5,4
    8000676c:	00300c93          	li	s9,3
    80006770:	c39ff06f          	j	800063a8 <__printf+0x260>
    80006774:	00500793          	li	a5,5
    80006778:	00400c93          	li	s9,4
    8000677c:	c2dff06f          	j	800063a8 <__printf+0x260>
    80006780:	00500793          	li	a5,5
    80006784:	00400c93          	li	s9,4
    80006788:	db9ff06f          	j	80006540 <__printf+0x3f8>
    8000678c:	00600793          	li	a5,6
    80006790:	00500c93          	li	s9,5
    80006794:	dadff06f          	j	80006540 <__printf+0x3f8>
    80006798:	00600793          	li	a5,6
    8000679c:	00500c93          	li	s9,5
    800067a0:	c09ff06f          	j	800063a8 <__printf+0x260>
    800067a4:	00800793          	li	a5,8
    800067a8:	00700c93          	li	s9,7
    800067ac:	bfdff06f          	j	800063a8 <__printf+0x260>
    800067b0:	00100793          	li	a5,1
    800067b4:	d91ff06f          	j	80006544 <__printf+0x3fc>
    800067b8:	00100793          	li	a5,1
    800067bc:	bf1ff06f          	j	800063ac <__printf+0x264>
    800067c0:	00900793          	li	a5,9
    800067c4:	00800c93          	li	s9,8
    800067c8:	be1ff06f          	j	800063a8 <__printf+0x260>
    800067cc:	00002517          	auipc	a0,0x2
    800067d0:	f0450513          	addi	a0,a0,-252 # 800086d0 <CONSOLE_STATUS+0x6c0>
    800067d4:	00000097          	auipc	ra,0x0
    800067d8:	918080e7          	jalr	-1768(ra) # 800060ec <panic>

00000000800067dc <printfinit>:
    800067dc:	fe010113          	addi	sp,sp,-32
    800067e0:	00813823          	sd	s0,16(sp)
    800067e4:	00913423          	sd	s1,8(sp)
    800067e8:	00113c23          	sd	ra,24(sp)
    800067ec:	02010413          	addi	s0,sp,32
    800067f0:	00003497          	auipc	s1,0x3
    800067f4:	4f048493          	addi	s1,s1,1264 # 80009ce0 <pr>
    800067f8:	00048513          	mv	a0,s1
    800067fc:	00002597          	auipc	a1,0x2
    80006800:	ee458593          	addi	a1,a1,-284 # 800086e0 <CONSOLE_STATUS+0x6d0>
    80006804:	00000097          	auipc	ra,0x0
    80006808:	5f4080e7          	jalr	1524(ra) # 80006df8 <initlock>
    8000680c:	01813083          	ld	ra,24(sp)
    80006810:	01013403          	ld	s0,16(sp)
    80006814:	0004ac23          	sw	zero,24(s1)
    80006818:	00813483          	ld	s1,8(sp)
    8000681c:	02010113          	addi	sp,sp,32
    80006820:	00008067          	ret

0000000080006824 <uartinit>:
    80006824:	ff010113          	addi	sp,sp,-16
    80006828:	00813423          	sd	s0,8(sp)
    8000682c:	01010413          	addi	s0,sp,16
    80006830:	100007b7          	lui	a5,0x10000
    80006834:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006838:	f8000713          	li	a4,-128
    8000683c:	00e781a3          	sb	a4,3(a5)
    80006840:	00300713          	li	a4,3
    80006844:	00e78023          	sb	a4,0(a5)
    80006848:	000780a3          	sb	zero,1(a5)
    8000684c:	00e781a3          	sb	a4,3(a5)
    80006850:	00700693          	li	a3,7
    80006854:	00d78123          	sb	a3,2(a5)
    80006858:	00e780a3          	sb	a4,1(a5)
    8000685c:	00813403          	ld	s0,8(sp)
    80006860:	01010113          	addi	sp,sp,16
    80006864:	00008067          	ret

0000000080006868 <uartputc>:
    80006868:	00002797          	auipc	a5,0x2
    8000686c:	1407a783          	lw	a5,320(a5) # 800089a8 <panicked>
    80006870:	00078463          	beqz	a5,80006878 <uartputc+0x10>
    80006874:	0000006f          	j	80006874 <uartputc+0xc>
    80006878:	fd010113          	addi	sp,sp,-48
    8000687c:	02813023          	sd	s0,32(sp)
    80006880:	00913c23          	sd	s1,24(sp)
    80006884:	01213823          	sd	s2,16(sp)
    80006888:	01313423          	sd	s3,8(sp)
    8000688c:	02113423          	sd	ra,40(sp)
    80006890:	03010413          	addi	s0,sp,48
    80006894:	00002917          	auipc	s2,0x2
    80006898:	11c90913          	addi	s2,s2,284 # 800089b0 <uart_tx_r>
    8000689c:	00093783          	ld	a5,0(s2)
    800068a0:	00002497          	auipc	s1,0x2
    800068a4:	11848493          	addi	s1,s1,280 # 800089b8 <uart_tx_w>
    800068a8:	0004b703          	ld	a4,0(s1)
    800068ac:	02078693          	addi	a3,a5,32
    800068b0:	00050993          	mv	s3,a0
    800068b4:	02e69c63          	bne	a3,a4,800068ec <uartputc+0x84>
    800068b8:	00001097          	auipc	ra,0x1
    800068bc:	834080e7          	jalr	-1996(ra) # 800070ec <push_on>
    800068c0:	00093783          	ld	a5,0(s2)
    800068c4:	0004b703          	ld	a4,0(s1)
    800068c8:	02078793          	addi	a5,a5,32
    800068cc:	00e79463          	bne	a5,a4,800068d4 <uartputc+0x6c>
    800068d0:	0000006f          	j	800068d0 <uartputc+0x68>
    800068d4:	00001097          	auipc	ra,0x1
    800068d8:	88c080e7          	jalr	-1908(ra) # 80007160 <pop_on>
    800068dc:	00093783          	ld	a5,0(s2)
    800068e0:	0004b703          	ld	a4,0(s1)
    800068e4:	02078693          	addi	a3,a5,32
    800068e8:	fce688e3          	beq	a3,a4,800068b8 <uartputc+0x50>
    800068ec:	01f77693          	andi	a3,a4,31
    800068f0:	00003597          	auipc	a1,0x3
    800068f4:	41058593          	addi	a1,a1,1040 # 80009d00 <uart_tx_buf>
    800068f8:	00d586b3          	add	a3,a1,a3
    800068fc:	00170713          	addi	a4,a4,1
    80006900:	01368023          	sb	s3,0(a3)
    80006904:	00e4b023          	sd	a4,0(s1)
    80006908:	10000637          	lui	a2,0x10000
    8000690c:	02f71063          	bne	a4,a5,8000692c <uartputc+0xc4>
    80006910:	0340006f          	j	80006944 <uartputc+0xdc>
    80006914:	00074703          	lbu	a4,0(a4)
    80006918:	00f93023          	sd	a5,0(s2)
    8000691c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006920:	00093783          	ld	a5,0(s2)
    80006924:	0004b703          	ld	a4,0(s1)
    80006928:	00f70e63          	beq	a4,a5,80006944 <uartputc+0xdc>
    8000692c:	00564683          	lbu	a3,5(a2)
    80006930:	01f7f713          	andi	a4,a5,31
    80006934:	00e58733          	add	a4,a1,a4
    80006938:	0206f693          	andi	a3,a3,32
    8000693c:	00178793          	addi	a5,a5,1
    80006940:	fc069ae3          	bnez	a3,80006914 <uartputc+0xac>
    80006944:	02813083          	ld	ra,40(sp)
    80006948:	02013403          	ld	s0,32(sp)
    8000694c:	01813483          	ld	s1,24(sp)
    80006950:	01013903          	ld	s2,16(sp)
    80006954:	00813983          	ld	s3,8(sp)
    80006958:	03010113          	addi	sp,sp,48
    8000695c:	00008067          	ret

0000000080006960 <uartputc_sync>:
    80006960:	ff010113          	addi	sp,sp,-16
    80006964:	00813423          	sd	s0,8(sp)
    80006968:	01010413          	addi	s0,sp,16
    8000696c:	00002717          	auipc	a4,0x2
    80006970:	03c72703          	lw	a4,60(a4) # 800089a8 <panicked>
    80006974:	02071663          	bnez	a4,800069a0 <uartputc_sync+0x40>
    80006978:	00050793          	mv	a5,a0
    8000697c:	100006b7          	lui	a3,0x10000
    80006980:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006984:	02077713          	andi	a4,a4,32
    80006988:	fe070ce3          	beqz	a4,80006980 <uartputc_sync+0x20>
    8000698c:	0ff7f793          	andi	a5,a5,255
    80006990:	00f68023          	sb	a5,0(a3)
    80006994:	00813403          	ld	s0,8(sp)
    80006998:	01010113          	addi	sp,sp,16
    8000699c:	00008067          	ret
    800069a0:	0000006f          	j	800069a0 <uartputc_sync+0x40>

00000000800069a4 <uartstart>:
    800069a4:	ff010113          	addi	sp,sp,-16
    800069a8:	00813423          	sd	s0,8(sp)
    800069ac:	01010413          	addi	s0,sp,16
    800069b0:	00002617          	auipc	a2,0x2
    800069b4:	00060613          	mv	a2,a2
    800069b8:	00002517          	auipc	a0,0x2
    800069bc:	00050513          	mv	a0,a0
    800069c0:	00063783          	ld	a5,0(a2) # 800089b0 <uart_tx_r>
    800069c4:	00053703          	ld	a4,0(a0) # 800089b8 <uart_tx_w>
    800069c8:	04f70263          	beq	a4,a5,80006a0c <uartstart+0x68>
    800069cc:	100005b7          	lui	a1,0x10000
    800069d0:	00003817          	auipc	a6,0x3
    800069d4:	33080813          	addi	a6,a6,816 # 80009d00 <uart_tx_buf>
    800069d8:	01c0006f          	j	800069f4 <uartstart+0x50>
    800069dc:	0006c703          	lbu	a4,0(a3)
    800069e0:	00f63023          	sd	a5,0(a2)
    800069e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800069e8:	00063783          	ld	a5,0(a2)
    800069ec:	00053703          	ld	a4,0(a0)
    800069f0:	00f70e63          	beq	a4,a5,80006a0c <uartstart+0x68>
    800069f4:	01f7f713          	andi	a4,a5,31
    800069f8:	00e806b3          	add	a3,a6,a4
    800069fc:	0055c703          	lbu	a4,5(a1)
    80006a00:	00178793          	addi	a5,a5,1
    80006a04:	02077713          	andi	a4,a4,32
    80006a08:	fc071ae3          	bnez	a4,800069dc <uartstart+0x38>
    80006a0c:	00813403          	ld	s0,8(sp)
    80006a10:	01010113          	addi	sp,sp,16
    80006a14:	00008067          	ret

0000000080006a18 <uartgetc>:
    80006a18:	ff010113          	addi	sp,sp,-16
    80006a1c:	00813423          	sd	s0,8(sp)
    80006a20:	01010413          	addi	s0,sp,16
    80006a24:	10000737          	lui	a4,0x10000
    80006a28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006a2c:	0017f793          	andi	a5,a5,1
    80006a30:	00078c63          	beqz	a5,80006a48 <uartgetc+0x30>
    80006a34:	00074503          	lbu	a0,0(a4)
    80006a38:	0ff57513          	andi	a0,a0,255
    80006a3c:	00813403          	ld	s0,8(sp)
    80006a40:	01010113          	addi	sp,sp,16
    80006a44:	00008067          	ret
    80006a48:	fff00513          	li	a0,-1
    80006a4c:	ff1ff06f          	j	80006a3c <uartgetc+0x24>

0000000080006a50 <uartintr>:
    80006a50:	100007b7          	lui	a5,0x10000
    80006a54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006a58:	0017f793          	andi	a5,a5,1
    80006a5c:	0a078463          	beqz	a5,80006b04 <uartintr+0xb4>
    80006a60:	fe010113          	addi	sp,sp,-32
    80006a64:	00813823          	sd	s0,16(sp)
    80006a68:	00913423          	sd	s1,8(sp)
    80006a6c:	00113c23          	sd	ra,24(sp)
    80006a70:	02010413          	addi	s0,sp,32
    80006a74:	100004b7          	lui	s1,0x10000
    80006a78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006a7c:	0ff57513          	andi	a0,a0,255
    80006a80:	fffff097          	auipc	ra,0xfffff
    80006a84:	534080e7          	jalr	1332(ra) # 80005fb4 <consoleintr>
    80006a88:	0054c783          	lbu	a5,5(s1)
    80006a8c:	0017f793          	andi	a5,a5,1
    80006a90:	fe0794e3          	bnez	a5,80006a78 <uartintr+0x28>
    80006a94:	00002617          	auipc	a2,0x2
    80006a98:	f1c60613          	addi	a2,a2,-228 # 800089b0 <uart_tx_r>
    80006a9c:	00002517          	auipc	a0,0x2
    80006aa0:	f1c50513          	addi	a0,a0,-228 # 800089b8 <uart_tx_w>
    80006aa4:	00063783          	ld	a5,0(a2)
    80006aa8:	00053703          	ld	a4,0(a0)
    80006aac:	04f70263          	beq	a4,a5,80006af0 <uartintr+0xa0>
    80006ab0:	100005b7          	lui	a1,0x10000
    80006ab4:	00003817          	auipc	a6,0x3
    80006ab8:	24c80813          	addi	a6,a6,588 # 80009d00 <uart_tx_buf>
    80006abc:	01c0006f          	j	80006ad8 <uartintr+0x88>
    80006ac0:	0006c703          	lbu	a4,0(a3)
    80006ac4:	00f63023          	sd	a5,0(a2)
    80006ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006acc:	00063783          	ld	a5,0(a2)
    80006ad0:	00053703          	ld	a4,0(a0)
    80006ad4:	00f70e63          	beq	a4,a5,80006af0 <uartintr+0xa0>
    80006ad8:	01f7f713          	andi	a4,a5,31
    80006adc:	00e806b3          	add	a3,a6,a4
    80006ae0:	0055c703          	lbu	a4,5(a1)
    80006ae4:	00178793          	addi	a5,a5,1
    80006ae8:	02077713          	andi	a4,a4,32
    80006aec:	fc071ae3          	bnez	a4,80006ac0 <uartintr+0x70>
    80006af0:	01813083          	ld	ra,24(sp)
    80006af4:	01013403          	ld	s0,16(sp)
    80006af8:	00813483          	ld	s1,8(sp)
    80006afc:	02010113          	addi	sp,sp,32
    80006b00:	00008067          	ret
    80006b04:	00002617          	auipc	a2,0x2
    80006b08:	eac60613          	addi	a2,a2,-340 # 800089b0 <uart_tx_r>
    80006b0c:	00002517          	auipc	a0,0x2
    80006b10:	eac50513          	addi	a0,a0,-340 # 800089b8 <uart_tx_w>
    80006b14:	00063783          	ld	a5,0(a2)
    80006b18:	00053703          	ld	a4,0(a0)
    80006b1c:	04f70263          	beq	a4,a5,80006b60 <uartintr+0x110>
    80006b20:	100005b7          	lui	a1,0x10000
    80006b24:	00003817          	auipc	a6,0x3
    80006b28:	1dc80813          	addi	a6,a6,476 # 80009d00 <uart_tx_buf>
    80006b2c:	01c0006f          	j	80006b48 <uartintr+0xf8>
    80006b30:	0006c703          	lbu	a4,0(a3)
    80006b34:	00f63023          	sd	a5,0(a2)
    80006b38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006b3c:	00063783          	ld	a5,0(a2)
    80006b40:	00053703          	ld	a4,0(a0)
    80006b44:	02f70063          	beq	a4,a5,80006b64 <uartintr+0x114>
    80006b48:	01f7f713          	andi	a4,a5,31
    80006b4c:	00e806b3          	add	a3,a6,a4
    80006b50:	0055c703          	lbu	a4,5(a1)
    80006b54:	00178793          	addi	a5,a5,1
    80006b58:	02077713          	andi	a4,a4,32
    80006b5c:	fc071ae3          	bnez	a4,80006b30 <uartintr+0xe0>
    80006b60:	00008067          	ret
    80006b64:	00008067          	ret

0000000080006b68 <kinit>:
    80006b68:	fc010113          	addi	sp,sp,-64
    80006b6c:	02913423          	sd	s1,40(sp)
    80006b70:	fffff7b7          	lui	a5,0xfffff
    80006b74:	00009497          	auipc	s1,0x9
    80006b78:	48b48493          	addi	s1,s1,1163 # 8000ffff <end+0xfff>
    80006b7c:	02813823          	sd	s0,48(sp)
    80006b80:	01313c23          	sd	s3,24(sp)
    80006b84:	00f4f4b3          	and	s1,s1,a5
    80006b88:	02113c23          	sd	ra,56(sp)
    80006b8c:	03213023          	sd	s2,32(sp)
    80006b90:	01413823          	sd	s4,16(sp)
    80006b94:	01513423          	sd	s5,8(sp)
    80006b98:	04010413          	addi	s0,sp,64
    80006b9c:	000017b7          	lui	a5,0x1
    80006ba0:	01100993          	li	s3,17
    80006ba4:	00f487b3          	add	a5,s1,a5
    80006ba8:	01b99993          	slli	s3,s3,0x1b
    80006bac:	06f9e063          	bltu	s3,a5,80006c0c <kinit+0xa4>
    80006bb0:	00008a97          	auipc	s5,0x8
    80006bb4:	450a8a93          	addi	s5,s5,1104 # 8000f000 <end>
    80006bb8:	0754ec63          	bltu	s1,s5,80006c30 <kinit+0xc8>
    80006bbc:	0734fa63          	bgeu	s1,s3,80006c30 <kinit+0xc8>
    80006bc0:	00088a37          	lui	s4,0x88
    80006bc4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006bc8:	00002917          	auipc	s2,0x2
    80006bcc:	df890913          	addi	s2,s2,-520 # 800089c0 <kmem>
    80006bd0:	00ca1a13          	slli	s4,s4,0xc
    80006bd4:	0140006f          	j	80006be8 <kinit+0x80>
    80006bd8:	000017b7          	lui	a5,0x1
    80006bdc:	00f484b3          	add	s1,s1,a5
    80006be0:	0554e863          	bltu	s1,s5,80006c30 <kinit+0xc8>
    80006be4:	0534f663          	bgeu	s1,s3,80006c30 <kinit+0xc8>
    80006be8:	00001637          	lui	a2,0x1
    80006bec:	00100593          	li	a1,1
    80006bf0:	00048513          	mv	a0,s1
    80006bf4:	00000097          	auipc	ra,0x0
    80006bf8:	5e4080e7          	jalr	1508(ra) # 800071d8 <__memset>
    80006bfc:	00093783          	ld	a5,0(s2)
    80006c00:	00f4b023          	sd	a5,0(s1)
    80006c04:	00993023          	sd	s1,0(s2)
    80006c08:	fd4498e3          	bne	s1,s4,80006bd8 <kinit+0x70>
    80006c0c:	03813083          	ld	ra,56(sp)
    80006c10:	03013403          	ld	s0,48(sp)
    80006c14:	02813483          	ld	s1,40(sp)
    80006c18:	02013903          	ld	s2,32(sp)
    80006c1c:	01813983          	ld	s3,24(sp)
    80006c20:	01013a03          	ld	s4,16(sp)
    80006c24:	00813a83          	ld	s5,8(sp)
    80006c28:	04010113          	addi	sp,sp,64
    80006c2c:	00008067          	ret
    80006c30:	00002517          	auipc	a0,0x2
    80006c34:	ad050513          	addi	a0,a0,-1328 # 80008700 <digits+0x18>
    80006c38:	fffff097          	auipc	ra,0xfffff
    80006c3c:	4b4080e7          	jalr	1204(ra) # 800060ec <panic>

0000000080006c40 <freerange>:
    80006c40:	fc010113          	addi	sp,sp,-64
    80006c44:	000017b7          	lui	a5,0x1
    80006c48:	02913423          	sd	s1,40(sp)
    80006c4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006c50:	009504b3          	add	s1,a0,s1
    80006c54:	fffff537          	lui	a0,0xfffff
    80006c58:	02813823          	sd	s0,48(sp)
    80006c5c:	02113c23          	sd	ra,56(sp)
    80006c60:	03213023          	sd	s2,32(sp)
    80006c64:	01313c23          	sd	s3,24(sp)
    80006c68:	01413823          	sd	s4,16(sp)
    80006c6c:	01513423          	sd	s5,8(sp)
    80006c70:	01613023          	sd	s6,0(sp)
    80006c74:	04010413          	addi	s0,sp,64
    80006c78:	00a4f4b3          	and	s1,s1,a0
    80006c7c:	00f487b3          	add	a5,s1,a5
    80006c80:	06f5e463          	bltu	a1,a5,80006ce8 <freerange+0xa8>
    80006c84:	00008a97          	auipc	s5,0x8
    80006c88:	37ca8a93          	addi	s5,s5,892 # 8000f000 <end>
    80006c8c:	0954e263          	bltu	s1,s5,80006d10 <freerange+0xd0>
    80006c90:	01100993          	li	s3,17
    80006c94:	01b99993          	slli	s3,s3,0x1b
    80006c98:	0734fc63          	bgeu	s1,s3,80006d10 <freerange+0xd0>
    80006c9c:	00058a13          	mv	s4,a1
    80006ca0:	00002917          	auipc	s2,0x2
    80006ca4:	d2090913          	addi	s2,s2,-736 # 800089c0 <kmem>
    80006ca8:	00002b37          	lui	s6,0x2
    80006cac:	0140006f          	j	80006cc0 <freerange+0x80>
    80006cb0:	000017b7          	lui	a5,0x1
    80006cb4:	00f484b3          	add	s1,s1,a5
    80006cb8:	0554ec63          	bltu	s1,s5,80006d10 <freerange+0xd0>
    80006cbc:	0534fa63          	bgeu	s1,s3,80006d10 <freerange+0xd0>
    80006cc0:	00001637          	lui	a2,0x1
    80006cc4:	00100593          	li	a1,1
    80006cc8:	00048513          	mv	a0,s1
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	50c080e7          	jalr	1292(ra) # 800071d8 <__memset>
    80006cd4:	00093703          	ld	a4,0(s2)
    80006cd8:	016487b3          	add	a5,s1,s6
    80006cdc:	00e4b023          	sd	a4,0(s1)
    80006ce0:	00993023          	sd	s1,0(s2)
    80006ce4:	fcfa76e3          	bgeu	s4,a5,80006cb0 <freerange+0x70>
    80006ce8:	03813083          	ld	ra,56(sp)
    80006cec:	03013403          	ld	s0,48(sp)
    80006cf0:	02813483          	ld	s1,40(sp)
    80006cf4:	02013903          	ld	s2,32(sp)
    80006cf8:	01813983          	ld	s3,24(sp)
    80006cfc:	01013a03          	ld	s4,16(sp)
    80006d00:	00813a83          	ld	s5,8(sp)
    80006d04:	00013b03          	ld	s6,0(sp)
    80006d08:	04010113          	addi	sp,sp,64
    80006d0c:	00008067          	ret
    80006d10:	00002517          	auipc	a0,0x2
    80006d14:	9f050513          	addi	a0,a0,-1552 # 80008700 <digits+0x18>
    80006d18:	fffff097          	auipc	ra,0xfffff
    80006d1c:	3d4080e7          	jalr	980(ra) # 800060ec <panic>

0000000080006d20 <kfree>:
    80006d20:	fe010113          	addi	sp,sp,-32
    80006d24:	00813823          	sd	s0,16(sp)
    80006d28:	00113c23          	sd	ra,24(sp)
    80006d2c:	00913423          	sd	s1,8(sp)
    80006d30:	02010413          	addi	s0,sp,32
    80006d34:	03451793          	slli	a5,a0,0x34
    80006d38:	04079c63          	bnez	a5,80006d90 <kfree+0x70>
    80006d3c:	00008797          	auipc	a5,0x8
    80006d40:	2c478793          	addi	a5,a5,708 # 8000f000 <end>
    80006d44:	00050493          	mv	s1,a0
    80006d48:	04f56463          	bltu	a0,a5,80006d90 <kfree+0x70>
    80006d4c:	01100793          	li	a5,17
    80006d50:	01b79793          	slli	a5,a5,0x1b
    80006d54:	02f57e63          	bgeu	a0,a5,80006d90 <kfree+0x70>
    80006d58:	00001637          	lui	a2,0x1
    80006d5c:	00100593          	li	a1,1
    80006d60:	00000097          	auipc	ra,0x0
    80006d64:	478080e7          	jalr	1144(ra) # 800071d8 <__memset>
    80006d68:	00002797          	auipc	a5,0x2
    80006d6c:	c5878793          	addi	a5,a5,-936 # 800089c0 <kmem>
    80006d70:	0007b703          	ld	a4,0(a5)
    80006d74:	01813083          	ld	ra,24(sp)
    80006d78:	01013403          	ld	s0,16(sp)
    80006d7c:	00e4b023          	sd	a4,0(s1)
    80006d80:	0097b023          	sd	s1,0(a5)
    80006d84:	00813483          	ld	s1,8(sp)
    80006d88:	02010113          	addi	sp,sp,32
    80006d8c:	00008067          	ret
    80006d90:	00002517          	auipc	a0,0x2
    80006d94:	97050513          	addi	a0,a0,-1680 # 80008700 <digits+0x18>
    80006d98:	fffff097          	auipc	ra,0xfffff
    80006d9c:	354080e7          	jalr	852(ra) # 800060ec <panic>

0000000080006da0 <kalloc>:
    80006da0:	fe010113          	addi	sp,sp,-32
    80006da4:	00813823          	sd	s0,16(sp)
    80006da8:	00913423          	sd	s1,8(sp)
    80006dac:	00113c23          	sd	ra,24(sp)
    80006db0:	02010413          	addi	s0,sp,32
    80006db4:	00002797          	auipc	a5,0x2
    80006db8:	c0c78793          	addi	a5,a5,-1012 # 800089c0 <kmem>
    80006dbc:	0007b483          	ld	s1,0(a5)
    80006dc0:	02048063          	beqz	s1,80006de0 <kalloc+0x40>
    80006dc4:	0004b703          	ld	a4,0(s1)
    80006dc8:	00001637          	lui	a2,0x1
    80006dcc:	00500593          	li	a1,5
    80006dd0:	00048513          	mv	a0,s1
    80006dd4:	00e7b023          	sd	a4,0(a5)
    80006dd8:	00000097          	auipc	ra,0x0
    80006ddc:	400080e7          	jalr	1024(ra) # 800071d8 <__memset>
    80006de0:	01813083          	ld	ra,24(sp)
    80006de4:	01013403          	ld	s0,16(sp)
    80006de8:	00048513          	mv	a0,s1
    80006dec:	00813483          	ld	s1,8(sp)
    80006df0:	02010113          	addi	sp,sp,32
    80006df4:	00008067          	ret

0000000080006df8 <initlock>:
    80006df8:	ff010113          	addi	sp,sp,-16
    80006dfc:	00813423          	sd	s0,8(sp)
    80006e00:	01010413          	addi	s0,sp,16
    80006e04:	00813403          	ld	s0,8(sp)
    80006e08:	00b53423          	sd	a1,8(a0)
    80006e0c:	00052023          	sw	zero,0(a0)
    80006e10:	00053823          	sd	zero,16(a0)
    80006e14:	01010113          	addi	sp,sp,16
    80006e18:	00008067          	ret

0000000080006e1c <acquire>:
    80006e1c:	fe010113          	addi	sp,sp,-32
    80006e20:	00813823          	sd	s0,16(sp)
    80006e24:	00913423          	sd	s1,8(sp)
    80006e28:	00113c23          	sd	ra,24(sp)
    80006e2c:	01213023          	sd	s2,0(sp)
    80006e30:	02010413          	addi	s0,sp,32
    80006e34:	00050493          	mv	s1,a0
    80006e38:	10002973          	csrr	s2,sstatus
    80006e3c:	100027f3          	csrr	a5,sstatus
    80006e40:	ffd7f793          	andi	a5,a5,-3
    80006e44:	10079073          	csrw	sstatus,a5
    80006e48:	fffff097          	auipc	ra,0xfffff
    80006e4c:	8e8080e7          	jalr	-1816(ra) # 80005730 <mycpu>
    80006e50:	07852783          	lw	a5,120(a0)
    80006e54:	06078e63          	beqz	a5,80006ed0 <acquire+0xb4>
    80006e58:	fffff097          	auipc	ra,0xfffff
    80006e5c:	8d8080e7          	jalr	-1832(ra) # 80005730 <mycpu>
    80006e60:	07852783          	lw	a5,120(a0)
    80006e64:	0004a703          	lw	a4,0(s1)
    80006e68:	0017879b          	addiw	a5,a5,1
    80006e6c:	06f52c23          	sw	a5,120(a0)
    80006e70:	04071063          	bnez	a4,80006eb0 <acquire+0x94>
    80006e74:	00100713          	li	a4,1
    80006e78:	00070793          	mv	a5,a4
    80006e7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006e80:	0007879b          	sext.w	a5,a5
    80006e84:	fe079ae3          	bnez	a5,80006e78 <acquire+0x5c>
    80006e88:	0ff0000f          	fence
    80006e8c:	fffff097          	auipc	ra,0xfffff
    80006e90:	8a4080e7          	jalr	-1884(ra) # 80005730 <mycpu>
    80006e94:	01813083          	ld	ra,24(sp)
    80006e98:	01013403          	ld	s0,16(sp)
    80006e9c:	00a4b823          	sd	a0,16(s1)
    80006ea0:	00013903          	ld	s2,0(sp)
    80006ea4:	00813483          	ld	s1,8(sp)
    80006ea8:	02010113          	addi	sp,sp,32
    80006eac:	00008067          	ret
    80006eb0:	0104b903          	ld	s2,16(s1)
    80006eb4:	fffff097          	auipc	ra,0xfffff
    80006eb8:	87c080e7          	jalr	-1924(ra) # 80005730 <mycpu>
    80006ebc:	faa91ce3          	bne	s2,a0,80006e74 <acquire+0x58>
    80006ec0:	00002517          	auipc	a0,0x2
    80006ec4:	84850513          	addi	a0,a0,-1976 # 80008708 <digits+0x20>
    80006ec8:	fffff097          	auipc	ra,0xfffff
    80006ecc:	224080e7          	jalr	548(ra) # 800060ec <panic>
    80006ed0:	00195913          	srli	s2,s2,0x1
    80006ed4:	fffff097          	auipc	ra,0xfffff
    80006ed8:	85c080e7          	jalr	-1956(ra) # 80005730 <mycpu>
    80006edc:	00197913          	andi	s2,s2,1
    80006ee0:	07252e23          	sw	s2,124(a0)
    80006ee4:	f75ff06f          	j	80006e58 <acquire+0x3c>

0000000080006ee8 <release>:
    80006ee8:	fe010113          	addi	sp,sp,-32
    80006eec:	00813823          	sd	s0,16(sp)
    80006ef0:	00113c23          	sd	ra,24(sp)
    80006ef4:	00913423          	sd	s1,8(sp)
    80006ef8:	01213023          	sd	s2,0(sp)
    80006efc:	02010413          	addi	s0,sp,32
    80006f00:	00052783          	lw	a5,0(a0)
    80006f04:	00079a63          	bnez	a5,80006f18 <release+0x30>
    80006f08:	00002517          	auipc	a0,0x2
    80006f0c:	80850513          	addi	a0,a0,-2040 # 80008710 <digits+0x28>
    80006f10:	fffff097          	auipc	ra,0xfffff
    80006f14:	1dc080e7          	jalr	476(ra) # 800060ec <panic>
    80006f18:	01053903          	ld	s2,16(a0)
    80006f1c:	00050493          	mv	s1,a0
    80006f20:	fffff097          	auipc	ra,0xfffff
    80006f24:	810080e7          	jalr	-2032(ra) # 80005730 <mycpu>
    80006f28:	fea910e3          	bne	s2,a0,80006f08 <release+0x20>
    80006f2c:	0004b823          	sd	zero,16(s1)
    80006f30:	0ff0000f          	fence
    80006f34:	0f50000f          	fence	iorw,ow
    80006f38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006f3c:	ffffe097          	auipc	ra,0xffffe
    80006f40:	7f4080e7          	jalr	2036(ra) # 80005730 <mycpu>
    80006f44:	100027f3          	csrr	a5,sstatus
    80006f48:	0027f793          	andi	a5,a5,2
    80006f4c:	04079a63          	bnez	a5,80006fa0 <release+0xb8>
    80006f50:	07852783          	lw	a5,120(a0)
    80006f54:	02f05e63          	blez	a5,80006f90 <release+0xa8>
    80006f58:	fff7871b          	addiw	a4,a5,-1
    80006f5c:	06e52c23          	sw	a4,120(a0)
    80006f60:	00071c63          	bnez	a4,80006f78 <release+0x90>
    80006f64:	07c52783          	lw	a5,124(a0)
    80006f68:	00078863          	beqz	a5,80006f78 <release+0x90>
    80006f6c:	100027f3          	csrr	a5,sstatus
    80006f70:	0027e793          	ori	a5,a5,2
    80006f74:	10079073          	csrw	sstatus,a5
    80006f78:	01813083          	ld	ra,24(sp)
    80006f7c:	01013403          	ld	s0,16(sp)
    80006f80:	00813483          	ld	s1,8(sp)
    80006f84:	00013903          	ld	s2,0(sp)
    80006f88:	02010113          	addi	sp,sp,32
    80006f8c:	00008067          	ret
    80006f90:	00001517          	auipc	a0,0x1
    80006f94:	7a050513          	addi	a0,a0,1952 # 80008730 <digits+0x48>
    80006f98:	fffff097          	auipc	ra,0xfffff
    80006f9c:	154080e7          	jalr	340(ra) # 800060ec <panic>
    80006fa0:	00001517          	auipc	a0,0x1
    80006fa4:	77850513          	addi	a0,a0,1912 # 80008718 <digits+0x30>
    80006fa8:	fffff097          	auipc	ra,0xfffff
    80006fac:	144080e7          	jalr	324(ra) # 800060ec <panic>

0000000080006fb0 <holding>:
    80006fb0:	00052783          	lw	a5,0(a0)
    80006fb4:	00079663          	bnez	a5,80006fc0 <holding+0x10>
    80006fb8:	00000513          	li	a0,0
    80006fbc:	00008067          	ret
    80006fc0:	fe010113          	addi	sp,sp,-32
    80006fc4:	00813823          	sd	s0,16(sp)
    80006fc8:	00913423          	sd	s1,8(sp)
    80006fcc:	00113c23          	sd	ra,24(sp)
    80006fd0:	02010413          	addi	s0,sp,32
    80006fd4:	01053483          	ld	s1,16(a0)
    80006fd8:	ffffe097          	auipc	ra,0xffffe
    80006fdc:	758080e7          	jalr	1880(ra) # 80005730 <mycpu>
    80006fe0:	01813083          	ld	ra,24(sp)
    80006fe4:	01013403          	ld	s0,16(sp)
    80006fe8:	40a48533          	sub	a0,s1,a0
    80006fec:	00153513          	seqz	a0,a0
    80006ff0:	00813483          	ld	s1,8(sp)
    80006ff4:	02010113          	addi	sp,sp,32
    80006ff8:	00008067          	ret

0000000080006ffc <push_off>:
    80006ffc:	fe010113          	addi	sp,sp,-32
    80007000:	00813823          	sd	s0,16(sp)
    80007004:	00113c23          	sd	ra,24(sp)
    80007008:	00913423          	sd	s1,8(sp)
    8000700c:	02010413          	addi	s0,sp,32
    80007010:	100024f3          	csrr	s1,sstatus
    80007014:	100027f3          	csrr	a5,sstatus
    80007018:	ffd7f793          	andi	a5,a5,-3
    8000701c:	10079073          	csrw	sstatus,a5
    80007020:	ffffe097          	auipc	ra,0xffffe
    80007024:	710080e7          	jalr	1808(ra) # 80005730 <mycpu>
    80007028:	07852783          	lw	a5,120(a0)
    8000702c:	02078663          	beqz	a5,80007058 <push_off+0x5c>
    80007030:	ffffe097          	auipc	ra,0xffffe
    80007034:	700080e7          	jalr	1792(ra) # 80005730 <mycpu>
    80007038:	07852783          	lw	a5,120(a0)
    8000703c:	01813083          	ld	ra,24(sp)
    80007040:	01013403          	ld	s0,16(sp)
    80007044:	0017879b          	addiw	a5,a5,1
    80007048:	06f52c23          	sw	a5,120(a0)
    8000704c:	00813483          	ld	s1,8(sp)
    80007050:	02010113          	addi	sp,sp,32
    80007054:	00008067          	ret
    80007058:	0014d493          	srli	s1,s1,0x1
    8000705c:	ffffe097          	auipc	ra,0xffffe
    80007060:	6d4080e7          	jalr	1748(ra) # 80005730 <mycpu>
    80007064:	0014f493          	andi	s1,s1,1
    80007068:	06952e23          	sw	s1,124(a0)
    8000706c:	fc5ff06f          	j	80007030 <push_off+0x34>

0000000080007070 <pop_off>:
    80007070:	ff010113          	addi	sp,sp,-16
    80007074:	00813023          	sd	s0,0(sp)
    80007078:	00113423          	sd	ra,8(sp)
    8000707c:	01010413          	addi	s0,sp,16
    80007080:	ffffe097          	auipc	ra,0xffffe
    80007084:	6b0080e7          	jalr	1712(ra) # 80005730 <mycpu>
    80007088:	100027f3          	csrr	a5,sstatus
    8000708c:	0027f793          	andi	a5,a5,2
    80007090:	04079663          	bnez	a5,800070dc <pop_off+0x6c>
    80007094:	07852783          	lw	a5,120(a0)
    80007098:	02f05a63          	blez	a5,800070cc <pop_off+0x5c>
    8000709c:	fff7871b          	addiw	a4,a5,-1
    800070a0:	06e52c23          	sw	a4,120(a0)
    800070a4:	00071c63          	bnez	a4,800070bc <pop_off+0x4c>
    800070a8:	07c52783          	lw	a5,124(a0)
    800070ac:	00078863          	beqz	a5,800070bc <pop_off+0x4c>
    800070b0:	100027f3          	csrr	a5,sstatus
    800070b4:	0027e793          	ori	a5,a5,2
    800070b8:	10079073          	csrw	sstatus,a5
    800070bc:	00813083          	ld	ra,8(sp)
    800070c0:	00013403          	ld	s0,0(sp)
    800070c4:	01010113          	addi	sp,sp,16
    800070c8:	00008067          	ret
    800070cc:	00001517          	auipc	a0,0x1
    800070d0:	66450513          	addi	a0,a0,1636 # 80008730 <digits+0x48>
    800070d4:	fffff097          	auipc	ra,0xfffff
    800070d8:	018080e7          	jalr	24(ra) # 800060ec <panic>
    800070dc:	00001517          	auipc	a0,0x1
    800070e0:	63c50513          	addi	a0,a0,1596 # 80008718 <digits+0x30>
    800070e4:	fffff097          	auipc	ra,0xfffff
    800070e8:	008080e7          	jalr	8(ra) # 800060ec <panic>

00000000800070ec <push_on>:
    800070ec:	fe010113          	addi	sp,sp,-32
    800070f0:	00813823          	sd	s0,16(sp)
    800070f4:	00113c23          	sd	ra,24(sp)
    800070f8:	00913423          	sd	s1,8(sp)
    800070fc:	02010413          	addi	s0,sp,32
    80007100:	100024f3          	csrr	s1,sstatus
    80007104:	100027f3          	csrr	a5,sstatus
    80007108:	0027e793          	ori	a5,a5,2
    8000710c:	10079073          	csrw	sstatus,a5
    80007110:	ffffe097          	auipc	ra,0xffffe
    80007114:	620080e7          	jalr	1568(ra) # 80005730 <mycpu>
    80007118:	07852783          	lw	a5,120(a0)
    8000711c:	02078663          	beqz	a5,80007148 <push_on+0x5c>
    80007120:	ffffe097          	auipc	ra,0xffffe
    80007124:	610080e7          	jalr	1552(ra) # 80005730 <mycpu>
    80007128:	07852783          	lw	a5,120(a0)
    8000712c:	01813083          	ld	ra,24(sp)
    80007130:	01013403          	ld	s0,16(sp)
    80007134:	0017879b          	addiw	a5,a5,1
    80007138:	06f52c23          	sw	a5,120(a0)
    8000713c:	00813483          	ld	s1,8(sp)
    80007140:	02010113          	addi	sp,sp,32
    80007144:	00008067          	ret
    80007148:	0014d493          	srli	s1,s1,0x1
    8000714c:	ffffe097          	auipc	ra,0xffffe
    80007150:	5e4080e7          	jalr	1508(ra) # 80005730 <mycpu>
    80007154:	0014f493          	andi	s1,s1,1
    80007158:	06952e23          	sw	s1,124(a0)
    8000715c:	fc5ff06f          	j	80007120 <push_on+0x34>

0000000080007160 <pop_on>:
    80007160:	ff010113          	addi	sp,sp,-16
    80007164:	00813023          	sd	s0,0(sp)
    80007168:	00113423          	sd	ra,8(sp)
    8000716c:	01010413          	addi	s0,sp,16
    80007170:	ffffe097          	auipc	ra,0xffffe
    80007174:	5c0080e7          	jalr	1472(ra) # 80005730 <mycpu>
    80007178:	100027f3          	csrr	a5,sstatus
    8000717c:	0027f793          	andi	a5,a5,2
    80007180:	04078463          	beqz	a5,800071c8 <pop_on+0x68>
    80007184:	07852783          	lw	a5,120(a0)
    80007188:	02f05863          	blez	a5,800071b8 <pop_on+0x58>
    8000718c:	fff7879b          	addiw	a5,a5,-1
    80007190:	06f52c23          	sw	a5,120(a0)
    80007194:	07853783          	ld	a5,120(a0)
    80007198:	00079863          	bnez	a5,800071a8 <pop_on+0x48>
    8000719c:	100027f3          	csrr	a5,sstatus
    800071a0:	ffd7f793          	andi	a5,a5,-3
    800071a4:	10079073          	csrw	sstatus,a5
    800071a8:	00813083          	ld	ra,8(sp)
    800071ac:	00013403          	ld	s0,0(sp)
    800071b0:	01010113          	addi	sp,sp,16
    800071b4:	00008067          	ret
    800071b8:	00001517          	auipc	a0,0x1
    800071bc:	5a050513          	addi	a0,a0,1440 # 80008758 <digits+0x70>
    800071c0:	fffff097          	auipc	ra,0xfffff
    800071c4:	f2c080e7          	jalr	-212(ra) # 800060ec <panic>
    800071c8:	00001517          	auipc	a0,0x1
    800071cc:	57050513          	addi	a0,a0,1392 # 80008738 <digits+0x50>
    800071d0:	fffff097          	auipc	ra,0xfffff
    800071d4:	f1c080e7          	jalr	-228(ra) # 800060ec <panic>

00000000800071d8 <__memset>:
    800071d8:	ff010113          	addi	sp,sp,-16
    800071dc:	00813423          	sd	s0,8(sp)
    800071e0:	01010413          	addi	s0,sp,16
    800071e4:	1a060e63          	beqz	a2,800073a0 <__memset+0x1c8>
    800071e8:	40a007b3          	neg	a5,a0
    800071ec:	0077f793          	andi	a5,a5,7
    800071f0:	00778693          	addi	a3,a5,7
    800071f4:	00b00813          	li	a6,11
    800071f8:	0ff5f593          	andi	a1,a1,255
    800071fc:	fff6071b          	addiw	a4,a2,-1
    80007200:	1b06e663          	bltu	a3,a6,800073ac <__memset+0x1d4>
    80007204:	1cd76463          	bltu	a4,a3,800073cc <__memset+0x1f4>
    80007208:	1a078e63          	beqz	a5,800073c4 <__memset+0x1ec>
    8000720c:	00b50023          	sb	a1,0(a0)
    80007210:	00100713          	li	a4,1
    80007214:	1ae78463          	beq	a5,a4,800073bc <__memset+0x1e4>
    80007218:	00b500a3          	sb	a1,1(a0)
    8000721c:	00200713          	li	a4,2
    80007220:	1ae78a63          	beq	a5,a4,800073d4 <__memset+0x1fc>
    80007224:	00b50123          	sb	a1,2(a0)
    80007228:	00300713          	li	a4,3
    8000722c:	18e78463          	beq	a5,a4,800073b4 <__memset+0x1dc>
    80007230:	00b501a3          	sb	a1,3(a0)
    80007234:	00400713          	li	a4,4
    80007238:	1ae78263          	beq	a5,a4,800073dc <__memset+0x204>
    8000723c:	00b50223          	sb	a1,4(a0)
    80007240:	00500713          	li	a4,5
    80007244:	1ae78063          	beq	a5,a4,800073e4 <__memset+0x20c>
    80007248:	00b502a3          	sb	a1,5(a0)
    8000724c:	00700713          	li	a4,7
    80007250:	18e79e63          	bne	a5,a4,800073ec <__memset+0x214>
    80007254:	00b50323          	sb	a1,6(a0)
    80007258:	00700e93          	li	t4,7
    8000725c:	00859713          	slli	a4,a1,0x8
    80007260:	00e5e733          	or	a4,a1,a4
    80007264:	01059e13          	slli	t3,a1,0x10
    80007268:	01c76e33          	or	t3,a4,t3
    8000726c:	01859313          	slli	t1,a1,0x18
    80007270:	006e6333          	or	t1,t3,t1
    80007274:	02059893          	slli	a7,a1,0x20
    80007278:	40f60e3b          	subw	t3,a2,a5
    8000727c:	011368b3          	or	a7,t1,a7
    80007280:	02859813          	slli	a6,a1,0x28
    80007284:	0108e833          	or	a6,a7,a6
    80007288:	03059693          	slli	a3,a1,0x30
    8000728c:	003e589b          	srliw	a7,t3,0x3
    80007290:	00d866b3          	or	a3,a6,a3
    80007294:	03859713          	slli	a4,a1,0x38
    80007298:	00389813          	slli	a6,a7,0x3
    8000729c:	00f507b3          	add	a5,a0,a5
    800072a0:	00e6e733          	or	a4,a3,a4
    800072a4:	000e089b          	sext.w	a7,t3
    800072a8:	00f806b3          	add	a3,a6,a5
    800072ac:	00e7b023          	sd	a4,0(a5)
    800072b0:	00878793          	addi	a5,a5,8
    800072b4:	fed79ce3          	bne	a5,a3,800072ac <__memset+0xd4>
    800072b8:	ff8e7793          	andi	a5,t3,-8
    800072bc:	0007871b          	sext.w	a4,a5
    800072c0:	01d787bb          	addw	a5,a5,t4
    800072c4:	0ce88e63          	beq	a7,a4,800073a0 <__memset+0x1c8>
    800072c8:	00f50733          	add	a4,a0,a5
    800072cc:	00b70023          	sb	a1,0(a4)
    800072d0:	0017871b          	addiw	a4,a5,1
    800072d4:	0cc77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    800072d8:	00e50733          	add	a4,a0,a4
    800072dc:	00b70023          	sb	a1,0(a4)
    800072e0:	0027871b          	addiw	a4,a5,2
    800072e4:	0ac77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    800072e8:	00e50733          	add	a4,a0,a4
    800072ec:	00b70023          	sb	a1,0(a4)
    800072f0:	0037871b          	addiw	a4,a5,3
    800072f4:	0ac77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    800072f8:	00e50733          	add	a4,a0,a4
    800072fc:	00b70023          	sb	a1,0(a4)
    80007300:	0047871b          	addiw	a4,a5,4
    80007304:	08c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007308:	00e50733          	add	a4,a0,a4
    8000730c:	00b70023          	sb	a1,0(a4)
    80007310:	0057871b          	addiw	a4,a5,5
    80007314:	08c77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007318:	00e50733          	add	a4,a0,a4
    8000731c:	00b70023          	sb	a1,0(a4)
    80007320:	0067871b          	addiw	a4,a5,6
    80007324:	06c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007328:	00e50733          	add	a4,a0,a4
    8000732c:	00b70023          	sb	a1,0(a4)
    80007330:	0077871b          	addiw	a4,a5,7
    80007334:	06c77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007338:	00e50733          	add	a4,a0,a4
    8000733c:	00b70023          	sb	a1,0(a4)
    80007340:	0087871b          	addiw	a4,a5,8
    80007344:	04c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007348:	00e50733          	add	a4,a0,a4
    8000734c:	00b70023          	sb	a1,0(a4)
    80007350:	0097871b          	addiw	a4,a5,9
    80007354:	04c77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007358:	00e50733          	add	a4,a0,a4
    8000735c:	00b70023          	sb	a1,0(a4)
    80007360:	00a7871b          	addiw	a4,a5,10
    80007364:	02c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007368:	00e50733          	add	a4,a0,a4
    8000736c:	00b70023          	sb	a1,0(a4)
    80007370:	00b7871b          	addiw	a4,a5,11
    80007374:	02c77663          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007378:	00e50733          	add	a4,a0,a4
    8000737c:	00b70023          	sb	a1,0(a4)
    80007380:	00c7871b          	addiw	a4,a5,12
    80007384:	00c77e63          	bgeu	a4,a2,800073a0 <__memset+0x1c8>
    80007388:	00e50733          	add	a4,a0,a4
    8000738c:	00b70023          	sb	a1,0(a4)
    80007390:	00d7879b          	addiw	a5,a5,13
    80007394:	00c7f663          	bgeu	a5,a2,800073a0 <__memset+0x1c8>
    80007398:	00f507b3          	add	a5,a0,a5
    8000739c:	00b78023          	sb	a1,0(a5)
    800073a0:	00813403          	ld	s0,8(sp)
    800073a4:	01010113          	addi	sp,sp,16
    800073a8:	00008067          	ret
    800073ac:	00b00693          	li	a3,11
    800073b0:	e55ff06f          	j	80007204 <__memset+0x2c>
    800073b4:	00300e93          	li	t4,3
    800073b8:	ea5ff06f          	j	8000725c <__memset+0x84>
    800073bc:	00100e93          	li	t4,1
    800073c0:	e9dff06f          	j	8000725c <__memset+0x84>
    800073c4:	00000e93          	li	t4,0
    800073c8:	e95ff06f          	j	8000725c <__memset+0x84>
    800073cc:	00000793          	li	a5,0
    800073d0:	ef9ff06f          	j	800072c8 <__memset+0xf0>
    800073d4:	00200e93          	li	t4,2
    800073d8:	e85ff06f          	j	8000725c <__memset+0x84>
    800073dc:	00400e93          	li	t4,4
    800073e0:	e7dff06f          	j	8000725c <__memset+0x84>
    800073e4:	00500e93          	li	t4,5
    800073e8:	e75ff06f          	j	8000725c <__memset+0x84>
    800073ec:	00600e93          	li	t4,6
    800073f0:	e6dff06f          	j	8000725c <__memset+0x84>

00000000800073f4 <__memmove>:
    800073f4:	ff010113          	addi	sp,sp,-16
    800073f8:	00813423          	sd	s0,8(sp)
    800073fc:	01010413          	addi	s0,sp,16
    80007400:	0e060863          	beqz	a2,800074f0 <__memmove+0xfc>
    80007404:	fff6069b          	addiw	a3,a2,-1
    80007408:	0006881b          	sext.w	a6,a3
    8000740c:	0ea5e863          	bltu	a1,a0,800074fc <__memmove+0x108>
    80007410:	00758713          	addi	a4,a1,7
    80007414:	00a5e7b3          	or	a5,a1,a0
    80007418:	40a70733          	sub	a4,a4,a0
    8000741c:	0077f793          	andi	a5,a5,7
    80007420:	00f73713          	sltiu	a4,a4,15
    80007424:	00174713          	xori	a4,a4,1
    80007428:	0017b793          	seqz	a5,a5
    8000742c:	00e7f7b3          	and	a5,a5,a4
    80007430:	10078863          	beqz	a5,80007540 <__memmove+0x14c>
    80007434:	00900793          	li	a5,9
    80007438:	1107f463          	bgeu	a5,a6,80007540 <__memmove+0x14c>
    8000743c:	0036581b          	srliw	a6,a2,0x3
    80007440:	fff8081b          	addiw	a6,a6,-1
    80007444:	02081813          	slli	a6,a6,0x20
    80007448:	01d85893          	srli	a7,a6,0x1d
    8000744c:	00858813          	addi	a6,a1,8
    80007450:	00058793          	mv	a5,a1
    80007454:	00050713          	mv	a4,a0
    80007458:	01088833          	add	a6,a7,a6
    8000745c:	0007b883          	ld	a7,0(a5)
    80007460:	00878793          	addi	a5,a5,8
    80007464:	00870713          	addi	a4,a4,8
    80007468:	ff173c23          	sd	a7,-8(a4)
    8000746c:	ff0798e3          	bne	a5,a6,8000745c <__memmove+0x68>
    80007470:	ff867713          	andi	a4,a2,-8
    80007474:	02071793          	slli	a5,a4,0x20
    80007478:	0207d793          	srli	a5,a5,0x20
    8000747c:	00f585b3          	add	a1,a1,a5
    80007480:	40e686bb          	subw	a3,a3,a4
    80007484:	00f507b3          	add	a5,a0,a5
    80007488:	06e60463          	beq	a2,a4,800074f0 <__memmove+0xfc>
    8000748c:	0005c703          	lbu	a4,0(a1)
    80007490:	00e78023          	sb	a4,0(a5)
    80007494:	04068e63          	beqz	a3,800074f0 <__memmove+0xfc>
    80007498:	0015c603          	lbu	a2,1(a1)
    8000749c:	00100713          	li	a4,1
    800074a0:	00c780a3          	sb	a2,1(a5)
    800074a4:	04e68663          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074a8:	0025c603          	lbu	a2,2(a1)
    800074ac:	00200713          	li	a4,2
    800074b0:	00c78123          	sb	a2,2(a5)
    800074b4:	02e68e63          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074b8:	0035c603          	lbu	a2,3(a1)
    800074bc:	00300713          	li	a4,3
    800074c0:	00c781a3          	sb	a2,3(a5)
    800074c4:	02e68663          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074c8:	0045c603          	lbu	a2,4(a1)
    800074cc:	00400713          	li	a4,4
    800074d0:	00c78223          	sb	a2,4(a5)
    800074d4:	00e68e63          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074d8:	0055c603          	lbu	a2,5(a1)
    800074dc:	00500713          	li	a4,5
    800074e0:	00c782a3          	sb	a2,5(a5)
    800074e4:	00e68663          	beq	a3,a4,800074f0 <__memmove+0xfc>
    800074e8:	0065c703          	lbu	a4,6(a1)
    800074ec:	00e78323          	sb	a4,6(a5)
    800074f0:	00813403          	ld	s0,8(sp)
    800074f4:	01010113          	addi	sp,sp,16
    800074f8:	00008067          	ret
    800074fc:	02061713          	slli	a4,a2,0x20
    80007500:	02075713          	srli	a4,a4,0x20
    80007504:	00e587b3          	add	a5,a1,a4
    80007508:	f0f574e3          	bgeu	a0,a5,80007410 <__memmove+0x1c>
    8000750c:	02069613          	slli	a2,a3,0x20
    80007510:	02065613          	srli	a2,a2,0x20
    80007514:	fff64613          	not	a2,a2
    80007518:	00e50733          	add	a4,a0,a4
    8000751c:	00c78633          	add	a2,a5,a2
    80007520:	fff7c683          	lbu	a3,-1(a5)
    80007524:	fff78793          	addi	a5,a5,-1
    80007528:	fff70713          	addi	a4,a4,-1
    8000752c:	00d70023          	sb	a3,0(a4)
    80007530:	fec798e3          	bne	a5,a2,80007520 <__memmove+0x12c>
    80007534:	00813403          	ld	s0,8(sp)
    80007538:	01010113          	addi	sp,sp,16
    8000753c:	00008067          	ret
    80007540:	02069713          	slli	a4,a3,0x20
    80007544:	02075713          	srli	a4,a4,0x20
    80007548:	00170713          	addi	a4,a4,1
    8000754c:	00e50733          	add	a4,a0,a4
    80007550:	00050793          	mv	a5,a0
    80007554:	0005c683          	lbu	a3,0(a1)
    80007558:	00178793          	addi	a5,a5,1
    8000755c:	00158593          	addi	a1,a1,1
    80007560:	fed78fa3          	sb	a3,-1(a5)
    80007564:	fee798e3          	bne	a5,a4,80007554 <__memmove+0x160>
    80007568:	f89ff06f          	j	800074f0 <__memmove+0xfc>
	...

Disassembly of section .kernel:

000000008000b648 <copy_and_swap-0x9b8>:
	...

000000008000c000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000c000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000c004:	00b29a63          	bne	t0,a1,8000c018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000c008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000c00c:	fe029ae3          	bnez	t0,8000c000 <copy_and_swap>
    li a0, 0               # Set return to success.
    8000c010:	00000513          	li	a0,0
    jr ra                  # Return.
    8000c014:	00008067          	ret

000000008000c018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000c018:	00100513          	li	a0,1
    8000c01c:	00008067          	ret

000000008000c020 <_Z9mem_allocm>:
//

#include "../../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    8000c020:	ff010113          	addi	sp,sp,-16
    8000c024:	00813423          	sd	s0,8(sp)
    8000c028:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000c02c:	03f50513          	addi	a0,a0,63
    8000c030:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000c034:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    8000c038:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    8000c03c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000c040:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    8000c044:	00813403          	ld	s0,8(sp)
    8000c048:	01010113          	addi	sp,sp,16
    8000c04c:	00008067          	ret

000000008000c050 <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000c050:	ff010113          	addi	sp,sp,-16
    8000c054:	00813423          	sd	s0,8(sp)
    8000c058:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8000c05c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000c060:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000c064:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c068:	00050513          	mv	a0,a0

    return result;
}
    8000c06c:	0005051b          	sext.w	a0,a0
    8000c070:	00813403          	ld	s0,8(sp)
    8000c074:	01010113          	addi	sp,sp,16
    8000c078:	00008067          	ret

000000008000c07c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    8000c07c:	fd010113          	addi	sp,sp,-48
    8000c080:	02113423          	sd	ra,40(sp)
    8000c084:	02813023          	sd	s0,32(sp)
    8000c088:	00913c23          	sd	s1,24(sp)
    8000c08c:	01213823          	sd	s2,16(sp)
    8000c090:	01313423          	sd	s3,8(sp)
    8000c094:	03010413          	addi	s0,sp,48
    8000c098:	00050493          	mv	s1,a0
    8000c09c:	00058913          	mv	s2,a1
    8000c0a0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c0a4:	00001537          	lui	a0,0x1
    8000c0a8:	00000097          	auipc	ra,0x0
    8000c0ac:	f78080e7          	jalr	-136(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    8000c0b0:	04050a63          	beqz	a0,8000c104 <_Z13thread_createPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c0b4:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c0b8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c0bc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c0c0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c0c4:	01100793          	li	a5,17
    8000c0c8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    8000c0cc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c0d0:	00050493          	mv	s1,a0

    if(result != 0)
    8000c0d4:	02049263          	bnez	s1,8000c0f8 <_Z13thread_createPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c0d8:	0004851b          	sext.w	a0,s1
}
    8000c0dc:	02813083          	ld	ra,40(sp)
    8000c0e0:	02013403          	ld	s0,32(sp)
    8000c0e4:	01813483          	ld	s1,24(sp)
    8000c0e8:	01013903          	ld	s2,16(sp)
    8000c0ec:	00813983          	ld	s3,8(sp)
    8000c0f0:	03010113          	addi	sp,sp,48
    8000c0f4:	00008067          	ret
        mem_free(stack_space);
    8000c0f8:	00000097          	auipc	ra,0x0
    8000c0fc:	f58080e7          	jalr	-168(ra) # 8000c050 <_Z8mem_freePv>
    8000c100:	fd9ff06f          	j	8000c0d8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c104:	fff00513          	li	a0,-1
    8000c108:	fd5ff06f          	j	8000c0dc <_Z13thread_createPP7_threadPFvPvES2_+0x60>

000000008000c10c <_Z15thread_dispatchv>:

void thread_dispatch()
{
    8000c10c:	ff010113          	addi	sp,sp,-16
    8000c110:	00813423          	sd	s0,8(sp)
    8000c114:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    8000c118:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000c11c:	00000073          	ecall
}
    8000c120:	00813403          	ld	s0,8(sp)
    8000c124:	01010113          	addi	sp,sp,16
    8000c128:	00008067          	ret

000000008000c12c <_Z11thread_exitv>:

int thread_exit()
{
    8000c12c:	ff010113          	addi	sp,sp,-16
    8000c130:	00813423          	sd	s0,8(sp)
    8000c134:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000c138:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8000c13c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c140:	00050513          	mv	a0,a0
    return result;
}
    8000c144:	0005051b          	sext.w	a0,a0
    8000c148:	00813403          	ld	s0,8(sp)
    8000c14c:	01010113          	addi	sp,sp,16
    8000c150:	00008067          	ret

000000008000c154 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000c154:	ff010113          	addi	sp,sp,-16
    8000c158:	00813423          	sd	s0,8(sp)
    8000c15c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000c160:	02059593          	slli	a1,a1,0x20
    8000c164:	0205d593          	srli	a1,a1,0x20
    8000c168:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c16c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000c170:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000c174:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c178:	00050513          	mv	a0,a0
    return result;
}
    8000c17c:	0005051b          	sext.w	a0,a0
    8000c180:	00813403          	ld	s0,8(sp)
    8000c184:	01010113          	addi	sp,sp,16
    8000c188:	00008067          	ret

000000008000c18c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    8000c18c:	ff010113          	addi	sp,sp,-16
    8000c190:	00813423          	sd	s0,8(sp)
    8000c194:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c198:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000c19c:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000c1a0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1a4:	00050513          	mv	a0,a0
    return result;
}
    8000c1a8:	0005051b          	sext.w	a0,a0
    8000c1ac:	00813403          	ld	s0,8(sp)
    8000c1b0:	01010113          	addi	sp,sp,16
    8000c1b4:	00008067          	ret

000000008000c1b8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    8000c1b8:	ff010113          	addi	sp,sp,-16
    8000c1bc:	00813423          	sd	s0,8(sp)
    8000c1c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1c4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000c1c8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    8000c1cc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1d0:	00050513          	mv	a0,a0
    return result;
}
    8000c1d4:	0005051b          	sext.w	a0,a0
    8000c1d8:	00813403          	ld	s0,8(sp)
    8000c1dc:	01010113          	addi	sp,sp,16
    8000c1e0:	00008067          	ret

000000008000c1e4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000c1e4:	ff010113          	addi	sp,sp,-16
    8000c1e8:	00813423          	sd	s0,8(sp)
    8000c1ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1f0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000c1f4:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    8000c1f8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1fc:	00050513          	mv	a0,a0
    return result;
}
    8000c200:	0005051b          	sext.w	a0,a0
    8000c204:	00813403          	ld	s0,8(sp)
    8000c208:	01010113          	addi	sp,sp,16
    8000c20c:	00008067          	ret

000000008000c210 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    8000c210:	ff010113          	addi	sp,sp,-16
    8000c214:	00813423          	sd	s0,8(sp)
    8000c218:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8000c21c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000c220:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000c224:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c228:	00050513          	mv	a0,a0
    return result;
}
    8000c22c:	0005051b          	sext.w	a0,a0
    8000c230:	00813403          	ld	s0,8(sp)
    8000c234:	01010113          	addi	sp,sp,16
    8000c238:	00008067          	ret

000000008000c23c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8000c23c:	ff010113          	addi	sp,sp,-16
    8000c240:	00813423          	sd	s0,8(sp)
    8000c244:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    8000c248:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8000c24c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000c250:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c254:	00050513          	mv	a0,a0
    return result;
}
    8000c258:	0005051b          	sext.w	a0,a0
    8000c25c:	00813403          	ld	s0,8(sp)
    8000c260:	01010113          	addi	sp,sp,16
    8000c264:	00008067          	ret

000000008000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    8000c268:	fd010113          	addi	sp,sp,-48
    8000c26c:	02113423          	sd	ra,40(sp)
    8000c270:	02813023          	sd	s0,32(sp)
    8000c274:	00913c23          	sd	s1,24(sp)
    8000c278:	01213823          	sd	s2,16(sp)
    8000c27c:	01313423          	sd	s3,8(sp)
    8000c280:	03010413          	addi	s0,sp,48
    8000c284:	00050493          	mv	s1,a0
    8000c288:	00058913          	mv	s2,a1
    8000c28c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c290:	00001537          	lui	a0,0x1
    8000c294:	00000097          	auipc	ra,0x0
    8000c298:	d8c080e7          	jalr	-628(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    8000c29c:	04050a63          	beqz	a0,8000c2f0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c2a0:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c2a4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c2a8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c2ac:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c2b0:	01400793          	li	a5,20
    8000c2b4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000c2b8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c2bc:	00050493          	mv	s1,a0

    if(result != 0)
    8000c2c0:	02049263          	bnez	s1,8000c2e4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c2c4:	0004851b          	sext.w	a0,s1
}
    8000c2c8:	02813083          	ld	ra,40(sp)
    8000c2cc:	02013403          	ld	s0,32(sp)
    8000c2d0:	01813483          	ld	s1,24(sp)
    8000c2d4:	01013903          	ld	s2,16(sp)
    8000c2d8:	00813983          	ld	s3,8(sp)
    8000c2dc:	03010113          	addi	sp,sp,48
    8000c2e0:	00008067          	ret
        mem_free(stack_space);
    8000c2e4:	00000097          	auipc	ra,0x0
    8000c2e8:	d6c080e7          	jalr	-660(ra) # 8000c050 <_Z8mem_freePv>
    8000c2ec:	fd9ff06f          	j	8000c2c4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c2f0:	fff00513          	li	a0,-1
    8000c2f4:	fd5ff06f          	j	8000c2c8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x60>

000000008000c2f8 <_Z4getcv>:

char getc()
{
    8000c2f8:	ff010113          	addi	sp,sp,-16
    8000c2fc:	00813423          	sd	s0,8(sp)
    8000c300:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000c304:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    8000c308:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c30c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c310:	0ff57513          	andi	a0,a0,255
    8000c314:	00813403          	ld	s0,8(sp)
    8000c318:	01010113          	addi	sp,sp,16
    8000c31c:	00008067          	ret

000000008000c320 <_Z4putcc>:

void putc(char c)
{
    8000c320:	ff010113          	addi	sp,sp,-16
    8000c324:	00813423          	sd	s0,8(sp)
    8000c328:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8000c32c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000c330:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000c334:	00000073          	ecall
}
    8000c338:	00813403          	ld	s0,8(sp)
    8000c33c:	01010113          	addi	sp,sp,16
    8000c340:	00008067          	ret

000000008000c344 <_Z17thread_delete_pcbP7_thread>:
//    __asm__ volatile("mv %0, a0" : "=r"(result));
//    return (char)result;
//}

int thread_delete_pcb(thread_t handle)
{
    8000c344:	ff010113          	addi	sp,sp,-16
    8000c348:	00813423          	sd	s0,8(sp)
    8000c34c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c350:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    8000c354:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000c358:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c35c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c360:	0ff57513          	andi	a0,a0,255
    8000c364:	00813403          	ld	s0,8(sp)
    8000c368:	01010113          	addi	sp,sp,16
    8000c36c:	00008067          	ret

000000008000c370 <_ZN7_threaddlEPv>:
//

#include "../../h/_thread.hpp"
#include "../../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    8000c370:	ff010113          	addi	sp,sp,-16
    8000c374:	00113423          	sd	ra,8(sp)
    8000c378:	00813023          	sd	s0,0(sp)
    8000c37c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    8000c380:	00000097          	auipc	ra,0x0
    8000c384:	fc4080e7          	jalr	-60(ra) # 8000c344 <_Z17thread_delete_pcbP7_thread>
    8000c388:	00813083          	ld	ra,8(sp)
    8000c38c:	00013403          	ld	s0,0(sp)
    8000c390:	01010113          	addi	sp,sp,16
    8000c394:	00008067          	ret

000000008000c398 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000c398:	fe010113          	addi	sp,sp,-32
    8000c39c:	00113c23          	sd	ra,24(sp)
    8000c3a0:	00813823          	sd	s0,16(sp)
    8000c3a4:	00913423          	sd	s1,8(sp)
    8000c3a8:	02010413          	addi	s0,sp,32
    8000c3ac:	00050493          	mv	s1,a0
    LOCK();
    8000c3b0:	00100613          	li	a2,1
    8000c3b4:	00000593          	li	a1,0
    8000c3b8:	00002517          	auipc	a0,0x2
    8000c3bc:	d0050513          	addi	a0,a0,-768 # 8000e0b8 <lockPrint>
    8000c3c0:	00000097          	auipc	ra,0x0
    8000c3c4:	c40080e7          	jalr	-960(ra) # 8000c000 <copy_and_swap>
    8000c3c8:	fe0514e3          	bnez	a0,8000c3b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000c3cc:	0004c503          	lbu	a0,0(s1)
    8000c3d0:	00050a63          	beqz	a0,8000c3e4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000c3d4:	00000097          	auipc	ra,0x0
    8000c3d8:	f4c080e7          	jalr	-180(ra) # 8000c320 <_Z4putcc>
        string++;
    8000c3dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000c3e0:	fedff06f          	j	8000c3cc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000c3e4:	00000613          	li	a2,0
    8000c3e8:	00100593          	li	a1,1
    8000c3ec:	00002517          	auipc	a0,0x2
    8000c3f0:	ccc50513          	addi	a0,a0,-820 # 8000e0b8 <lockPrint>
    8000c3f4:	00000097          	auipc	ra,0x0
    8000c3f8:	c0c080e7          	jalr	-1012(ra) # 8000c000 <copy_and_swap>
    8000c3fc:	fe0514e3          	bnez	a0,8000c3e4 <_Z11printStringPKc+0x4c>
}
    8000c400:	01813083          	ld	ra,24(sp)
    8000c404:	01013403          	ld	s0,16(sp)
    8000c408:	00813483          	ld	s1,8(sp)
    8000c40c:	02010113          	addi	sp,sp,32
    8000c410:	00008067          	ret

000000008000c414 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000c414:	fd010113          	addi	sp,sp,-48
    8000c418:	02113423          	sd	ra,40(sp)
    8000c41c:	02813023          	sd	s0,32(sp)
    8000c420:	00913c23          	sd	s1,24(sp)
    8000c424:	01213823          	sd	s2,16(sp)
    8000c428:	01313423          	sd	s3,8(sp)
    8000c42c:	01413023          	sd	s4,0(sp)
    8000c430:	03010413          	addi	s0,sp,48
    8000c434:	00050993          	mv	s3,a0
    8000c438:	00058a13          	mv	s4,a1
    LOCK();
    8000c43c:	00100613          	li	a2,1
    8000c440:	00000593          	li	a1,0
    8000c444:	00002517          	auipc	a0,0x2
    8000c448:	c7450513          	addi	a0,a0,-908 # 8000e0b8 <lockPrint>
    8000c44c:	00000097          	auipc	ra,0x0
    8000c450:	bb4080e7          	jalr	-1100(ra) # 8000c000 <copy_and_swap>
    8000c454:	fe0514e3          	bnez	a0,8000c43c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000c458:	00000913          	li	s2,0
    8000c45c:	00090493          	mv	s1,s2
    8000c460:	0019091b          	addiw	s2,s2,1
    8000c464:	03495a63          	bge	s2,s4,8000c498 <_Z9getStringPci+0x84>
        cc = getc();
    8000c468:	00000097          	auipc	ra,0x0
    8000c46c:	e90080e7          	jalr	-368(ra) # 8000c2f8 <_Z4getcv>
        if(cc < 1)
    8000c470:	02050463          	beqz	a0,8000c498 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000c474:	009984b3          	add	s1,s3,s1
    8000c478:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000c47c:	00a00793          	li	a5,10
    8000c480:	00f50a63          	beq	a0,a5,8000c494 <_Z9getStringPci+0x80>
    8000c484:	00d00793          	li	a5,13
    8000c488:	fcf51ae3          	bne	a0,a5,8000c45c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000c48c:	00090493          	mv	s1,s2
    8000c490:	0080006f          	j	8000c498 <_Z9getStringPci+0x84>
    8000c494:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000c498:	009984b3          	add	s1,s3,s1
    8000c49c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000c4a0:	00000613          	li	a2,0
    8000c4a4:	00100593          	li	a1,1
    8000c4a8:	00002517          	auipc	a0,0x2
    8000c4ac:	c1050513          	addi	a0,a0,-1008 # 8000e0b8 <lockPrint>
    8000c4b0:	00000097          	auipc	ra,0x0
    8000c4b4:	b50080e7          	jalr	-1200(ra) # 8000c000 <copy_and_swap>
    8000c4b8:	fe0514e3          	bnez	a0,8000c4a0 <_Z9getStringPci+0x8c>
    return buf;
}
    8000c4bc:	00098513          	mv	a0,s3
    8000c4c0:	02813083          	ld	ra,40(sp)
    8000c4c4:	02013403          	ld	s0,32(sp)
    8000c4c8:	01813483          	ld	s1,24(sp)
    8000c4cc:	01013903          	ld	s2,16(sp)
    8000c4d0:	00813983          	ld	s3,8(sp)
    8000c4d4:	00013a03          	ld	s4,0(sp)
    8000c4d8:	03010113          	addi	sp,sp,48
    8000c4dc:	00008067          	ret

000000008000c4e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000c4e0:	ff010113          	addi	sp,sp,-16
    8000c4e4:	00813423          	sd	s0,8(sp)
    8000c4e8:	01010413          	addi	s0,sp,16
    8000c4ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000c4f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000c4f4:	0006c603          	lbu	a2,0(a3)
    8000c4f8:	fd06071b          	addiw	a4,a2,-48
    8000c4fc:	0ff77713          	andi	a4,a4,255
    8000c500:	00900793          	li	a5,9
    8000c504:	02e7e063          	bltu	a5,a4,8000c524 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000c508:	0025179b          	slliw	a5,a0,0x2
    8000c50c:	00a787bb          	addw	a5,a5,a0
    8000c510:	0017979b          	slliw	a5,a5,0x1
    8000c514:	00168693          	addi	a3,a3,1
    8000c518:	00c787bb          	addw	a5,a5,a2
    8000c51c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000c520:	fd5ff06f          	j	8000c4f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    8000c524:	00813403          	ld	s0,8(sp)
    8000c528:	01010113          	addi	sp,sp,16
    8000c52c:	00008067          	ret

000000008000c530 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000c530:	fc010113          	addi	sp,sp,-64
    8000c534:	02113c23          	sd	ra,56(sp)
    8000c538:	02813823          	sd	s0,48(sp)
    8000c53c:	02913423          	sd	s1,40(sp)
    8000c540:	03213023          	sd	s2,32(sp)
    8000c544:	01313c23          	sd	s3,24(sp)
    8000c548:	04010413          	addi	s0,sp,64
    8000c54c:	00050493          	mv	s1,a0
    8000c550:	00058913          	mv	s2,a1
    8000c554:	00060993          	mv	s3,a2
    LOCK();
    8000c558:	00100613          	li	a2,1
    8000c55c:	00000593          	li	a1,0
    8000c560:	00002517          	auipc	a0,0x2
    8000c564:	b5850513          	addi	a0,a0,-1192 # 8000e0b8 <lockPrint>
    8000c568:	00000097          	auipc	ra,0x0
    8000c56c:	a98080e7          	jalr	-1384(ra) # 8000c000 <copy_and_swap>
    8000c570:	fe0514e3          	bnez	a0,8000c558 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000c574:	00098463          	beqz	s3,8000c57c <_Z8printIntiii+0x4c>
    8000c578:	0804c463          	bltz	s1,8000c600 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000c57c:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000c580:	00000593          	li	a1,0
    }

    i = 0;
    8000c584:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000c588:	0009079b          	sext.w	a5,s2
    8000c58c:	0325773b          	remuw	a4,a0,s2
    8000c590:	00048613          	mv	a2,s1
    8000c594:	0014849b          	addiw	s1,s1,1
    8000c598:	02071693          	slli	a3,a4,0x20
    8000c59c:	0206d693          	srli	a3,a3,0x20
    8000c5a0:	00002717          	auipc	a4,0x2
    8000c5a4:	a8870713          	addi	a4,a4,-1400 # 8000e028 <digits>
    8000c5a8:	00d70733          	add	a4,a4,a3
    8000c5ac:	00074683          	lbu	a3,0(a4)
    8000c5b0:	fd040713          	addi	a4,s0,-48
    8000c5b4:	00c70733          	add	a4,a4,a2
    8000c5b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000c5bc:	0005071b          	sext.w	a4,a0
    8000c5c0:	0325553b          	divuw	a0,a0,s2
    8000c5c4:	fcf772e3          	bgeu	a4,a5,8000c588 <_Z8printIntiii+0x58>
    if(neg)
    8000c5c8:	00058c63          	beqz	a1,8000c5e0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000c5cc:	fd040793          	addi	a5,s0,-48
    8000c5d0:	009784b3          	add	s1,a5,s1
    8000c5d4:	02d00793          	li	a5,45
    8000c5d8:	fef48823          	sb	a5,-16(s1)
    8000c5dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000c5e0:	fff4849b          	addiw	s1,s1,-1
    8000c5e4:	0204c463          	bltz	s1,8000c60c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000c5e8:	fd040793          	addi	a5,s0,-48
    8000c5ec:	009787b3          	add	a5,a5,s1
    8000c5f0:	ff07c503          	lbu	a0,-16(a5)
    8000c5f4:	00000097          	auipc	ra,0x0
    8000c5f8:	d2c080e7          	jalr	-724(ra) # 8000c320 <_Z4putcc>
    8000c5fc:	fe5ff06f          	j	8000c5e0 <_Z8printIntiii+0xb0>
        x = -xx;
    8000c600:	4090053b          	negw	a0,s1
        neg = 1;
    8000c604:	00100593          	li	a1,1
        x = -xx;
    8000c608:	f7dff06f          	j	8000c584 <_Z8printIntiii+0x54>

    UNLOCK();
    8000c60c:	00000613          	li	a2,0
    8000c610:	00100593          	li	a1,1
    8000c614:	00002517          	auipc	a0,0x2
    8000c618:	aa450513          	addi	a0,a0,-1372 # 8000e0b8 <lockPrint>
    8000c61c:	00000097          	auipc	ra,0x0
    8000c620:	9e4080e7          	jalr	-1564(ra) # 8000c000 <copy_and_swap>
    8000c624:	fe0514e3          	bnez	a0,8000c60c <_Z8printIntiii+0xdc>
}
    8000c628:	03813083          	ld	ra,56(sp)
    8000c62c:	03013403          	ld	s0,48(sp)
    8000c630:	02813483          	ld	s1,40(sp)
    8000c634:	02013903          	ld	s2,32(sp)
    8000c638:	01813983          	ld	s3,24(sp)
    8000c63c:	04010113          	addi	sp,sp,64
    8000c640:	00008067          	ret

000000008000c644 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000c644:	fd010113          	addi	sp,sp,-48
    8000c648:	02113423          	sd	ra,40(sp)
    8000c64c:	02813023          	sd	s0,32(sp)
    8000c650:	00913c23          	sd	s1,24(sp)
    8000c654:	01213823          	sd	s2,16(sp)
    8000c658:	01313423          	sd	s3,8(sp)
    8000c65c:	03010413          	addi	s0,sp,48
    8000c660:	00050493          	mv	s1,a0
    8000c664:	00058993          	mv	s3,a1
    8000c668:	0015879b          	addiw	a5,a1,1
    8000c66c:	0007851b          	sext.w	a0,a5
    8000c670:	00f4a023          	sw	a5,0(s1)
    8000c674:	0004a823          	sw	zero,16(s1)
    8000c678:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000c67c:	00251513          	slli	a0,a0,0x2
    8000c680:	00000097          	auipc	ra,0x0
    8000c684:	9a0080e7          	jalr	-1632(ra) # 8000c020 <_Z9mem_allocm>
    8000c688:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000c68c:	01000513          	li	a0,16
    8000c690:	00001097          	auipc	ra,0x1
    8000c694:	8dc080e7          	jalr	-1828(ra) # 8000cf6c <_Znwm>
    8000c698:	00050913          	mv	s2,a0
    8000c69c:	00050863          	beqz	a0,8000c6ac <_ZN9BufferCPPC1Ei+0x68>
    8000c6a0:	00000593          	li	a1,0
    8000c6a4:	00001097          	auipc	ra,0x1
    8000c6a8:	b1c080e7          	jalr	-1252(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6ac:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000c6b0:	01000513          	li	a0,16
    8000c6b4:	00001097          	auipc	ra,0x1
    8000c6b8:	8b8080e7          	jalr	-1864(ra) # 8000cf6c <_Znwm>
    8000c6bc:	00050913          	mv	s2,a0
    8000c6c0:	00050863          	beqz	a0,8000c6d0 <_ZN9BufferCPPC1Ei+0x8c>
    8000c6c4:	00098593          	mv	a1,s3
    8000c6c8:	00001097          	auipc	ra,0x1
    8000c6cc:	af8080e7          	jalr	-1288(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6d0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000c6d4:	01000513          	li	a0,16
    8000c6d8:	00001097          	auipc	ra,0x1
    8000c6dc:	894080e7          	jalr	-1900(ra) # 8000cf6c <_Znwm>
    8000c6e0:	00050913          	mv	s2,a0
    8000c6e4:	00050863          	beqz	a0,8000c6f4 <_ZN9BufferCPPC1Ei+0xb0>
    8000c6e8:	00100593          	li	a1,1
    8000c6ec:	00001097          	auipc	ra,0x1
    8000c6f0:	ad4080e7          	jalr	-1324(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000c6f8:	01000513          	li	a0,16
    8000c6fc:	00001097          	auipc	ra,0x1
    8000c700:	870080e7          	jalr	-1936(ra) # 8000cf6c <_Znwm>
    8000c704:	00050913          	mv	s2,a0
    8000c708:	00050863          	beqz	a0,8000c718 <_ZN9BufferCPPC1Ei+0xd4>
    8000c70c:	00100593          	li	a1,1
    8000c710:	00001097          	auipc	ra,0x1
    8000c714:	ab0080e7          	jalr	-1360(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c718:	0324b823          	sd	s2,48(s1)
}
    8000c71c:	02813083          	ld	ra,40(sp)
    8000c720:	02013403          	ld	s0,32(sp)
    8000c724:	01813483          	ld	s1,24(sp)
    8000c728:	01013903          	ld	s2,16(sp)
    8000c72c:	00813983          	ld	s3,8(sp)
    8000c730:	03010113          	addi	sp,sp,48
    8000c734:	00008067          	ret
    8000c738:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000c73c:	00090513          	mv	a0,s2
    8000c740:	00001097          	auipc	ra,0x1
    8000c744:	854080e7          	jalr	-1964(ra) # 8000cf94 <_ZdlPv>
    8000c748:	00048513          	mv	a0,s1
    8000c74c:	ffffd097          	auipc	ra,0xffffd
    8000c750:	43c080e7          	jalr	1084(ra) # 80009b88 <_Unwind_Resume>
    8000c754:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000c758:	00090513          	mv	a0,s2
    8000c75c:	00001097          	auipc	ra,0x1
    8000c760:	838080e7          	jalr	-1992(ra) # 8000cf94 <_ZdlPv>
    8000c764:	00048513          	mv	a0,s1
    8000c768:	ffffd097          	auipc	ra,0xffffd
    8000c76c:	420080e7          	jalr	1056(ra) # 80009b88 <_Unwind_Resume>
    8000c770:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000c774:	00090513          	mv	a0,s2
    8000c778:	00001097          	auipc	ra,0x1
    8000c77c:	81c080e7          	jalr	-2020(ra) # 8000cf94 <_ZdlPv>
    8000c780:	00048513          	mv	a0,s1
    8000c784:	ffffd097          	auipc	ra,0xffffd
    8000c788:	404080e7          	jalr	1028(ra) # 80009b88 <_Unwind_Resume>
    8000c78c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000c790:	00090513          	mv	a0,s2
    8000c794:	00001097          	auipc	ra,0x1
    8000c798:	800080e7          	jalr	-2048(ra) # 8000cf94 <_ZdlPv>
    8000c79c:	00048513          	mv	a0,s1
    8000c7a0:	ffffd097          	auipc	ra,0xffffd
    8000c7a4:	3e8080e7          	jalr	1000(ra) # 80009b88 <_Unwind_Resume>

000000008000c7a8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000c7a8:	fe010113          	addi	sp,sp,-32
    8000c7ac:	00113c23          	sd	ra,24(sp)
    8000c7b0:	00813823          	sd	s0,16(sp)
    8000c7b4:	00913423          	sd	s1,8(sp)
    8000c7b8:	01213023          	sd	s2,0(sp)
    8000c7bc:	02010413          	addi	s0,sp,32
    8000c7c0:	00050493          	mv	s1,a0
    8000c7c4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000c7c8:	01853503          	ld	a0,24(a0)
    8000c7cc:	00001097          	auipc	ra,0x1
    8000c7d0:	9bc080e7          	jalr	-1604(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000c7d4:	0304b503          	ld	a0,48(s1)
    8000c7d8:	00001097          	auipc	ra,0x1
    8000c7dc:	9b0080e7          	jalr	-1616(ra) # 8000d188 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000c7e0:	0084b783          	ld	a5,8(s1)
    8000c7e4:	0144a703          	lw	a4,20(s1)
    8000c7e8:	00271713          	slli	a4,a4,0x2
    8000c7ec:	00e787b3          	add	a5,a5,a4
    8000c7f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000c7f4:	0144a783          	lw	a5,20(s1)
    8000c7f8:	0017879b          	addiw	a5,a5,1
    8000c7fc:	0004a703          	lw	a4,0(s1)
    8000c800:	02e7e7bb          	remw	a5,a5,a4
    8000c804:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000c808:	0304b503          	ld	a0,48(s1)
    8000c80c:	00001097          	auipc	ra,0x1
    8000c810:	a00080e7          	jalr	-1536(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000c814:	0204b503          	ld	a0,32(s1)
    8000c818:	00001097          	auipc	ra,0x1
    8000c81c:	9f4080e7          	jalr	-1548(ra) # 8000d20c <_ZN9Semaphore6signalEv>

}
    8000c820:	01813083          	ld	ra,24(sp)
    8000c824:	01013403          	ld	s0,16(sp)
    8000c828:	00813483          	ld	s1,8(sp)
    8000c82c:	00013903          	ld	s2,0(sp)
    8000c830:	02010113          	addi	sp,sp,32
    8000c834:	00008067          	ret

000000008000c838 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000c838:	fe010113          	addi	sp,sp,-32
    8000c83c:	00113c23          	sd	ra,24(sp)
    8000c840:	00813823          	sd	s0,16(sp)
    8000c844:	00913423          	sd	s1,8(sp)
    8000c848:	01213023          	sd	s2,0(sp)
    8000c84c:	02010413          	addi	s0,sp,32
    8000c850:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000c854:	02053503          	ld	a0,32(a0)
    8000c858:	00001097          	auipc	ra,0x1
    8000c85c:	930080e7          	jalr	-1744(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000c860:	0284b503          	ld	a0,40(s1)
    8000c864:	00001097          	auipc	ra,0x1
    8000c868:	924080e7          	jalr	-1756(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000c86c:	0084b703          	ld	a4,8(s1)
    8000c870:	0104a783          	lw	a5,16(s1)
    8000c874:	00279693          	slli	a3,a5,0x2
    8000c878:	00d70733          	add	a4,a4,a3
    8000c87c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000c880:	0017879b          	addiw	a5,a5,1
    8000c884:	0004a703          	lw	a4,0(s1)
    8000c888:	02e7e7bb          	remw	a5,a5,a4
    8000c88c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000c890:	0284b503          	ld	a0,40(s1)
    8000c894:	00001097          	auipc	ra,0x1
    8000c898:	978080e7          	jalr	-1672(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000c89c:	0184b503          	ld	a0,24(s1)
    8000c8a0:	00001097          	auipc	ra,0x1
    8000c8a4:	96c080e7          	jalr	-1684(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c8a8:	00090513          	mv	a0,s2
    8000c8ac:	01813083          	ld	ra,24(sp)
    8000c8b0:	01013403          	ld	s0,16(sp)
    8000c8b4:	00813483          	ld	s1,8(sp)
    8000c8b8:	00013903          	ld	s2,0(sp)
    8000c8bc:	02010113          	addi	sp,sp,32
    8000c8c0:	00008067          	ret

000000008000c8c4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000c8c4:	fe010113          	addi	sp,sp,-32
    8000c8c8:	00113c23          	sd	ra,24(sp)
    8000c8cc:	00813823          	sd	s0,16(sp)
    8000c8d0:	00913423          	sd	s1,8(sp)
    8000c8d4:	01213023          	sd	s2,0(sp)
    8000c8d8:	02010413          	addi	s0,sp,32
    8000c8dc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000c8e0:	02853503          	ld	a0,40(a0)
    8000c8e4:	00001097          	auipc	ra,0x1
    8000c8e8:	8a4080e7          	jalr	-1884(ra) # 8000d188 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000c8ec:	0304b503          	ld	a0,48(s1)
    8000c8f0:	00001097          	auipc	ra,0x1
    8000c8f4:	898080e7          	jalr	-1896(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000c8f8:	0144a783          	lw	a5,20(s1)
    8000c8fc:	0104a903          	lw	s2,16(s1)
    8000c900:	0327ce63          	blt	a5,s2,8000c93c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000c904:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000c908:	0304b503          	ld	a0,48(s1)
    8000c90c:	00001097          	auipc	ra,0x1
    8000c910:	900080e7          	jalr	-1792(ra) # 8000d20c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000c914:	0284b503          	ld	a0,40(s1)
    8000c918:	00001097          	auipc	ra,0x1
    8000c91c:	8f4080e7          	jalr	-1804(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c920:	00090513          	mv	a0,s2
    8000c924:	01813083          	ld	ra,24(sp)
    8000c928:	01013403          	ld	s0,16(sp)
    8000c92c:	00813483          	ld	s1,8(sp)
    8000c930:	00013903          	ld	s2,0(sp)
    8000c934:	02010113          	addi	sp,sp,32
    8000c938:	00008067          	ret
        ret = cap - head + tail;
    8000c93c:	0004a703          	lw	a4,0(s1)
    8000c940:	4127093b          	subw	s2,a4,s2
    8000c944:	00f9093b          	addw	s2,s2,a5
    8000c948:	fc1ff06f          	j	8000c908 <_ZN9BufferCPP6getCntEv+0x44>

000000008000c94c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000c94c:	fe010113          	addi	sp,sp,-32
    8000c950:	00113c23          	sd	ra,24(sp)
    8000c954:	00813823          	sd	s0,16(sp)
    8000c958:	00913423          	sd	s1,8(sp)
    8000c95c:	02010413          	addi	s0,sp,32
    8000c960:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000c964:	00a00513          	li	a0,10
    8000c968:	00001097          	auipc	ra,0x1
    8000c96c:	904080e7          	jalr	-1788(ra) # 8000d26c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000c970:	00001517          	auipc	a0,0x1
    8000c974:	69050513          	addi	a0,a0,1680 # 8000e000 <userDataStart>
    8000c978:	00000097          	auipc	ra,0x0
    8000c97c:	a20080e7          	jalr	-1504(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt()) {
    8000c980:	00048513          	mv	a0,s1
    8000c984:	00000097          	auipc	ra,0x0
    8000c988:	f40080e7          	jalr	-192(ra) # 8000c8c4 <_ZN9BufferCPP6getCntEv>
    8000c98c:	02050c63          	beqz	a0,8000c9c4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000c990:	0084b783          	ld	a5,8(s1)
    8000c994:	0104a703          	lw	a4,16(s1)
    8000c998:	00271713          	slli	a4,a4,0x2
    8000c99c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000c9a0:	0007c503          	lbu	a0,0(a5)
    8000c9a4:	00001097          	auipc	ra,0x1
    8000c9a8:	8c8080e7          	jalr	-1848(ra) # 8000d26c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000c9ac:	0104a783          	lw	a5,16(s1)
    8000c9b0:	0017879b          	addiw	a5,a5,1
    8000c9b4:	0004a703          	lw	a4,0(s1)
    8000c9b8:	02e7e7bb          	remw	a5,a5,a4
    8000c9bc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000c9c0:	fc1ff06f          	j	8000c980 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000c9c4:	02100513          	li	a0,33
    8000c9c8:	00001097          	auipc	ra,0x1
    8000c9cc:	8a4080e7          	jalr	-1884(ra) # 8000d26c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000c9d0:	00a00513          	li	a0,10
    8000c9d4:	00001097          	auipc	ra,0x1
    8000c9d8:	898080e7          	jalr	-1896(ra) # 8000d26c <_ZN7Console4putcEc>
    mem_free(buffer);
    8000c9dc:	0084b503          	ld	a0,8(s1)
    8000c9e0:	fffff097          	auipc	ra,0xfffff
    8000c9e4:	670080e7          	jalr	1648(ra) # 8000c050 <_Z8mem_freePv>
    delete itemAvailable;
    8000c9e8:	0204b503          	ld	a0,32(s1)
    8000c9ec:	00050863          	beqz	a0,8000c9fc <_ZN9BufferCPPD1Ev+0xb0>
    8000c9f0:	00053783          	ld	a5,0(a0)
    8000c9f4:	0087b783          	ld	a5,8(a5)
    8000c9f8:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000c9fc:	0184b503          	ld	a0,24(s1)
    8000ca00:	00050863          	beqz	a0,8000ca10 <_ZN9BufferCPPD1Ev+0xc4>
    8000ca04:	00053783          	ld	a5,0(a0)
    8000ca08:	0087b783          	ld	a5,8(a5)
    8000ca0c:	000780e7          	jalr	a5
    delete mutexTail;
    8000ca10:	0304b503          	ld	a0,48(s1)
    8000ca14:	00050863          	beqz	a0,8000ca24 <_ZN9BufferCPPD1Ev+0xd8>
    8000ca18:	00053783          	ld	a5,0(a0)
    8000ca1c:	0087b783          	ld	a5,8(a5)
    8000ca20:	000780e7          	jalr	a5
    delete mutexHead;
    8000ca24:	0284b503          	ld	a0,40(s1)
    8000ca28:	00050863          	beqz	a0,8000ca38 <_ZN9BufferCPPD1Ev+0xec>
    8000ca2c:	00053783          	ld	a5,0(a0)
    8000ca30:	0087b783          	ld	a5,8(a5)
    8000ca34:	000780e7          	jalr	a5
}
    8000ca38:	01813083          	ld	ra,24(sp)
    8000ca3c:	01013403          	ld	s0,16(sp)
    8000ca40:	00813483          	ld	s1,8(sp)
    8000ca44:	02010113          	addi	sp,sp,32
    8000ca48:	00008067          	ret

000000008000ca4c <_Z9sleepyRunPv>:
#include "../../../h/syscall_c_kernel.hpp"
#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    8000ca4c:	fe010113          	addi	sp,sp,-32
    8000ca50:	00113c23          	sd	ra,24(sp)
    8000ca54:	00813823          	sd	s0,16(sp)
    8000ca58:	00913423          	sd	s1,8(sp)
    8000ca5c:	01213023          	sd	s2,0(sp)
    8000ca60:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000ca64:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000ca68:	00600493          	li	s1,6
    while (--i > 0) {
    8000ca6c:	fff4849b          	addiw	s1,s1,-1
    8000ca70:	04905463          	blez	s1,8000cab8 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    8000ca74:	00001517          	auipc	a0,0x1
    8000ca78:	5a450513          	addi	a0,a0,1444 # 8000e018 <userDataStart+0x18>
    8000ca7c:	00000097          	auipc	ra,0x0
    8000ca80:	91c080e7          	jalr	-1764(ra) # 8000c398 <_Z11printStringPKc>
        printInt(sleep_time);
    8000ca84:	00000613          	li	a2,0
    8000ca88:	00a00593          	li	a1,10
    8000ca8c:	0009051b          	sext.w	a0,s2
    8000ca90:	00000097          	auipc	ra,0x0
    8000ca94:	aa0080e7          	jalr	-1376(ra) # 8000c530 <_Z8printIntiii>
        printString(" !\n");
    8000ca98:	00001517          	auipc	a0,0x1
    8000ca9c:	58850513          	addi	a0,a0,1416 # 8000e020 <userDataStart+0x20>
    8000caa0:	00000097          	auipc	ra,0x0
    8000caa4:	8f8080e7          	jalr	-1800(ra) # 8000c398 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000caa8:	00090513          	mv	a0,s2
    8000caac:	fffff097          	auipc	ra,0xfffff
    8000cab0:	764080e7          	jalr	1892(ra) # 8000c210 <_Z10time_sleepm>
    while (--i > 0) {
    8000cab4:	fb9ff06f          	j	8000ca6c <_Z9sleepyRunPv+0x20>
//        {
//            thread_dispatch_kernel();
//            *((size_t*)HEAP_START_ADDR) = 4;
//        }
    }
    finished[sleep_time/10-1] = true;
    8000cab8:	00a00793          	li	a5,10
    8000cabc:	02f95933          	divu	s2,s2,a5
    8000cac0:	fff90913          	addi	s2,s2,-1
    8000cac4:	00001797          	auipc	a5,0x1
    8000cac8:	5fc78793          	addi	a5,a5,1532 # 8000e0c0 <finished>
    8000cacc:	01278933          	add	s2,a5,s2
    8000cad0:	00100793          	li	a5,1
    8000cad4:	00f90023          	sb	a5,0(s2)
}
    8000cad8:	01813083          	ld	ra,24(sp)
    8000cadc:	01013403          	ld	s0,16(sp)
    8000cae0:	00813483          	ld	s1,8(sp)
    8000cae4:	00013903          	ld	s2,0(sp)
    8000cae8:	02010113          	addi	sp,sp,32
    8000caec:	00008067          	ret

000000008000caf0 <_Z12testSleepingv>:

void testSleeping() {
    8000caf0:	fc010113          	addi	sp,sp,-64
    8000caf4:	02113c23          	sd	ra,56(sp)
    8000caf8:	02813823          	sd	s0,48(sp)
    8000cafc:	02913423          	sd	s1,40(sp)
    8000cb00:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000cb04:	00a00793          	li	a5,10
    8000cb08:	fcf43823          	sd	a5,-48(s0)
    8000cb0c:	01400793          	li	a5,20
    8000cb10:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000cb14:	00000493          	li	s1,0
    8000cb18:	02c0006f          	j	8000cb44 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000cb1c:	00349793          	slli	a5,s1,0x3
    8000cb20:	fd040613          	addi	a2,s0,-48
    8000cb24:	00f60633          	add	a2,a2,a5
    8000cb28:	00000597          	auipc	a1,0x0
    8000cb2c:	f2458593          	addi	a1,a1,-220 # 8000ca4c <_Z9sleepyRunPv>
    8000cb30:	fc040513          	addi	a0,s0,-64
    8000cb34:	00f50533          	add	a0,a0,a5
    8000cb38:	fffff097          	auipc	ra,0xfffff
    8000cb3c:	544080e7          	jalr	1348(ra) # 8000c07c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000cb40:	0014849b          	addiw	s1,s1,1
    8000cb44:	00100793          	li	a5,1
    8000cb48:	fc97dae3          	bge	a5,s1,8000cb1c <_Z12testSleepingv+0x2c>
    }

//    int count = 0;
    while (!(finished[0] && finished[1])) {
    8000cb4c:	00001797          	auipc	a5,0x1
    8000cb50:	5747c783          	lbu	a5,1396(a5) # 8000e0c0 <finished>
    8000cb54:	fe078ce3          	beqz	a5,8000cb4c <_Z12testSleepingv+0x5c>
    8000cb58:	00001797          	auipc	a5,0x1
    8000cb5c:	5697c783          	lbu	a5,1385(a5) # 8000e0c1 <finished+0x1>
    8000cb60:	fe0786e3          	beqz	a5,8000cb4c <_Z12testSleepingv+0x5c>
//        if(count == 2000*2000)
//            finished[0] = true;
//        else
//            thread_dispatch();
    }
}
    8000cb64:	03813083          	ld	ra,56(sp)
    8000cb68:	03013403          	ld	s0,48(sp)
    8000cb6c:	02813483          	ld	s1,40(sp)
    8000cb70:	04010113          	addi	sp,sp,64
    8000cb74:	00008067          	ret

000000008000cb78 <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

//#include "test1OS2.hpp"

void userMain()
{
    8000cb78:	ff010113          	addi	sp,sp,-16
    8000cb7c:	00113423          	sd	ra,8(sp)
    8000cb80:	00813023          	sd	s0,0(sp)
    8000cb84:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    8000cb88:	00000097          	auipc	ra,0x0
    8000cb8c:	f68080e7          	jalr	-152(ra) # 8000caf0 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //userMainTest();
    8000cb90:	00813083          	ld	ra,8(sp)
    8000cb94:	00013403          	ld	s0,0(sp)
    8000cb98:	01010113          	addi	sp,sp,16
    8000cb9c:	00008067          	ret

000000008000cba0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000cba0:	fe010113          	addi	sp,sp,-32
    8000cba4:	00113c23          	sd	ra,24(sp)
    8000cba8:	00813823          	sd	s0,16(sp)
    8000cbac:	00913423          	sd	s1,8(sp)
    8000cbb0:	01213023          	sd	s2,0(sp)
    8000cbb4:	02010413          	addi	s0,sp,32
    8000cbb8:	00050493          	mv	s1,a0
    8000cbbc:	00058913          	mv	s2,a1
    8000cbc0:	0015879b          	addiw	a5,a1,1
    8000cbc4:	0007851b          	sext.w	a0,a5
    8000cbc8:	00f4a023          	sw	a5,0(s1)
    8000cbcc:	0004a823          	sw	zero,16(s1)
    8000cbd0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000cbd4:	00251513          	slli	a0,a0,0x2
    8000cbd8:	fffff097          	auipc	ra,0xfffff
    8000cbdc:	448080e7          	jalr	1096(ra) # 8000c020 <_Z9mem_allocm>
    8000cbe0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000cbe4:	00000593          	li	a1,0
    8000cbe8:	02048513          	addi	a0,s1,32
    8000cbec:	fffff097          	auipc	ra,0xfffff
    8000cbf0:	568080e7          	jalr	1384(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000cbf4:	00090593          	mv	a1,s2
    8000cbf8:	01848513          	addi	a0,s1,24
    8000cbfc:	fffff097          	auipc	ra,0xfffff
    8000cc00:	558080e7          	jalr	1368(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000cc04:	00100593          	li	a1,1
    8000cc08:	02848513          	addi	a0,s1,40
    8000cc0c:	fffff097          	auipc	ra,0xfffff
    8000cc10:	548080e7          	jalr	1352(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000cc14:	00100593          	li	a1,1
    8000cc18:	03048513          	addi	a0,s1,48
    8000cc1c:	fffff097          	auipc	ra,0xfffff
    8000cc20:	538080e7          	jalr	1336(ra) # 8000c154 <_Z8sem_openPP4_semj>
}
    8000cc24:	01813083          	ld	ra,24(sp)
    8000cc28:	01013403          	ld	s0,16(sp)
    8000cc2c:	00813483          	ld	s1,8(sp)
    8000cc30:	00013903          	ld	s2,0(sp)
    8000cc34:	02010113          	addi	sp,sp,32
    8000cc38:	00008067          	ret

000000008000cc3c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000cc3c:	fe010113          	addi	sp,sp,-32
    8000cc40:	00113c23          	sd	ra,24(sp)
    8000cc44:	00813823          	sd	s0,16(sp)
    8000cc48:	00913423          	sd	s1,8(sp)
    8000cc4c:	01213023          	sd	s2,0(sp)
    8000cc50:	02010413          	addi	s0,sp,32
    8000cc54:	00050493          	mv	s1,a0
    8000cc58:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000cc5c:	01853503          	ld	a0,24(a0)
    8000cc60:	fffff097          	auipc	ra,0xfffff
    8000cc64:	558080e7          	jalr	1368(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000cc68:	0304b503          	ld	a0,48(s1)
    8000cc6c:	fffff097          	auipc	ra,0xfffff
    8000cc70:	54c080e7          	jalr	1356(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000cc74:	0084b783          	ld	a5,8(s1)
    8000cc78:	0144a703          	lw	a4,20(s1)
    8000cc7c:	00271713          	slli	a4,a4,0x2
    8000cc80:	00e787b3          	add	a5,a5,a4
    8000cc84:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000cc88:	0144a783          	lw	a5,20(s1)
    8000cc8c:	0017879b          	addiw	a5,a5,1
    8000cc90:	0004a703          	lw	a4,0(s1)
    8000cc94:	02e7e7bb          	remw	a5,a5,a4
    8000cc98:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000cc9c:	0304b503          	ld	a0,48(s1)
    8000cca0:	fffff097          	auipc	ra,0xfffff
    8000cca4:	544080e7          	jalr	1348(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000cca8:	0204b503          	ld	a0,32(s1)
    8000ccac:	fffff097          	auipc	ra,0xfffff
    8000ccb0:	538080e7          	jalr	1336(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

}
    8000ccb4:	01813083          	ld	ra,24(sp)
    8000ccb8:	01013403          	ld	s0,16(sp)
    8000ccbc:	00813483          	ld	s1,8(sp)
    8000ccc0:	00013903          	ld	s2,0(sp)
    8000ccc4:	02010113          	addi	sp,sp,32
    8000ccc8:	00008067          	ret

000000008000cccc <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000cccc:	fe010113          	addi	sp,sp,-32
    8000ccd0:	00113c23          	sd	ra,24(sp)
    8000ccd4:	00813823          	sd	s0,16(sp)
    8000ccd8:	00913423          	sd	s1,8(sp)
    8000ccdc:	01213023          	sd	s2,0(sp)
    8000cce0:	02010413          	addi	s0,sp,32
    8000cce4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000cce8:	02053503          	ld	a0,32(a0)
    8000ccec:	fffff097          	auipc	ra,0xfffff
    8000ccf0:	4cc080e7          	jalr	1228(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000ccf4:	0284b503          	ld	a0,40(s1)
    8000ccf8:	fffff097          	auipc	ra,0xfffff
    8000ccfc:	4c0080e7          	jalr	1216(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000cd00:	0084b703          	ld	a4,8(s1)
    8000cd04:	0104a783          	lw	a5,16(s1)
    8000cd08:	00279693          	slli	a3,a5,0x2
    8000cd0c:	00d70733          	add	a4,a4,a3
    8000cd10:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000cd14:	0017879b          	addiw	a5,a5,1
    8000cd18:	0004a703          	lw	a4,0(s1)
    8000cd1c:	02e7e7bb          	remw	a5,a5,a4
    8000cd20:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000cd24:	0284b503          	ld	a0,40(s1)
    8000cd28:	fffff097          	auipc	ra,0xfffff
    8000cd2c:	4bc080e7          	jalr	1212(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000cd30:	0184b503          	ld	a0,24(s1)
    8000cd34:	fffff097          	auipc	ra,0xfffff
    8000cd38:	4b0080e7          	jalr	1200(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
}
    8000cd3c:	00090513          	mv	a0,s2
    8000cd40:	01813083          	ld	ra,24(sp)
    8000cd44:	01013403          	ld	s0,16(sp)
    8000cd48:	00813483          	ld	s1,8(sp)
    8000cd4c:	00013903          	ld	s2,0(sp)
    8000cd50:	02010113          	addi	sp,sp,32
    8000cd54:	00008067          	ret

000000008000cd58 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000cd58:	fe010113          	addi	sp,sp,-32
    8000cd5c:	00113c23          	sd	ra,24(sp)
    8000cd60:	00813823          	sd	s0,16(sp)
    8000cd64:	00913423          	sd	s1,8(sp)
    8000cd68:	01213023          	sd	s2,0(sp)
    8000cd6c:	02010413          	addi	s0,sp,32
    8000cd70:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000cd74:	02853503          	ld	a0,40(a0)
    8000cd78:	fffff097          	auipc	ra,0xfffff
    8000cd7c:	440080e7          	jalr	1088(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000cd80:	0304b503          	ld	a0,48(s1)
    8000cd84:	fffff097          	auipc	ra,0xfffff
    8000cd88:	434080e7          	jalr	1076(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000cd8c:	0144a783          	lw	a5,20(s1)
    8000cd90:	0104a903          	lw	s2,16(s1)
    8000cd94:	0327ce63          	blt	a5,s2,8000cdd0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000cd98:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000cd9c:	0304b503          	ld	a0,48(s1)
    8000cda0:	fffff097          	auipc	ra,0xfffff
    8000cda4:	444080e7          	jalr	1092(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000cda8:	0284b503          	ld	a0,40(s1)
    8000cdac:	fffff097          	auipc	ra,0xfffff
    8000cdb0:	438080e7          	jalr	1080(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
    8000cdb4:	00090513          	mv	a0,s2
    8000cdb8:	01813083          	ld	ra,24(sp)
    8000cdbc:	01013403          	ld	s0,16(sp)
    8000cdc0:	00813483          	ld	s1,8(sp)
    8000cdc4:	00013903          	ld	s2,0(sp)
    8000cdc8:	02010113          	addi	sp,sp,32
    8000cdcc:	00008067          	ret
        ret = cap - head + tail;
    8000cdd0:	0004a703          	lw	a4,0(s1)
    8000cdd4:	4127093b          	subw	s2,a4,s2
    8000cdd8:	00f9093b          	addw	s2,s2,a5
    8000cddc:	fc1ff06f          	j	8000cd9c <_ZN6Buffer6getCntEv+0x44>

000000008000cde0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000cde0:	fe010113          	addi	sp,sp,-32
    8000cde4:	00113c23          	sd	ra,24(sp)
    8000cde8:	00813823          	sd	s0,16(sp)
    8000cdec:	00913423          	sd	s1,8(sp)
    8000cdf0:	02010413          	addi	s0,sp,32
    8000cdf4:	00050493          	mv	s1,a0
    putc('\n');
    8000cdf8:	00a00513          	li	a0,10
    8000cdfc:	fffff097          	auipc	ra,0xfffff
    8000ce00:	524080e7          	jalr	1316(ra) # 8000c320 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000ce04:	00001517          	auipc	a0,0x1
    8000ce08:	1fc50513          	addi	a0,a0,508 # 8000e000 <userDataStart>
    8000ce0c:	fffff097          	auipc	ra,0xfffff
    8000ce10:	58c080e7          	jalr	1420(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000ce14:	00048513          	mv	a0,s1
    8000ce18:	00000097          	auipc	ra,0x0
    8000ce1c:	f40080e7          	jalr	-192(ra) # 8000cd58 <_ZN6Buffer6getCntEv>
    8000ce20:	02a05c63          	blez	a0,8000ce58 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000ce24:	0084b783          	ld	a5,8(s1)
    8000ce28:	0104a703          	lw	a4,16(s1)
    8000ce2c:	00271713          	slli	a4,a4,0x2
    8000ce30:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000ce34:	0007c503          	lbu	a0,0(a5)
    8000ce38:	fffff097          	auipc	ra,0xfffff
    8000ce3c:	4e8080e7          	jalr	1256(ra) # 8000c320 <_Z4putcc>
        head = (head + 1) % cap;
    8000ce40:	0104a783          	lw	a5,16(s1)
    8000ce44:	0017879b          	addiw	a5,a5,1
    8000ce48:	0004a703          	lw	a4,0(s1)
    8000ce4c:	02e7e7bb          	remw	a5,a5,a4
    8000ce50:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000ce54:	fc1ff06f          	j	8000ce14 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000ce58:	02100513          	li	a0,33
    8000ce5c:	fffff097          	auipc	ra,0xfffff
    8000ce60:	4c4080e7          	jalr	1220(ra) # 8000c320 <_Z4putcc>
    putc('\n');
    8000ce64:	00a00513          	li	a0,10
    8000ce68:	fffff097          	auipc	ra,0xfffff
    8000ce6c:	4b8080e7          	jalr	1208(ra) # 8000c320 <_Z4putcc>
    mem_free(buffer);
    8000ce70:	0084b503          	ld	a0,8(s1)
    8000ce74:	fffff097          	auipc	ra,0xfffff
    8000ce78:	1dc080e7          	jalr	476(ra) # 8000c050 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000ce7c:	0204b503          	ld	a0,32(s1)
    8000ce80:	fffff097          	auipc	ra,0xfffff
    8000ce84:	30c080e7          	jalr	780(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000ce88:	0184b503          	ld	a0,24(s1)
    8000ce8c:	fffff097          	auipc	ra,0xfffff
    8000ce90:	300080e7          	jalr	768(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000ce94:	0304b503          	ld	a0,48(s1)
    8000ce98:	fffff097          	auipc	ra,0xfffff
    8000ce9c:	2f4080e7          	jalr	756(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000cea0:	0284b503          	ld	a0,40(s1)
    8000cea4:	fffff097          	auipc	ra,0xfffff
    8000cea8:	2e8080e7          	jalr	744(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000ceac:	01813083          	ld	ra,24(sp)
    8000ceb0:	01013403          	ld	s0,16(sp)
    8000ceb4:	00813483          	ld	s1,8(sp)
    8000ceb8:	02010113          	addi	sp,sp,32
    8000cebc:	00008067          	ret

000000008000cec0 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    8000cec0:	ff010113          	addi	sp,sp,-16
    8000cec4:	00113423          	sd	ra,8(sp)
    8000cec8:	00813023          	sd	s0,0(sp)
    8000cecc:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    8000ced0:	00053783          	ld	a5,0(a0)
    8000ced4:	0107b783          	ld	a5,16(a5)
    8000ced8:	000780e7          	jalr	a5
}
    8000cedc:	00813083          	ld	ra,8(sp)
    8000cee0:	00013403          	ld	s0,0(sp)
    8000cee4:	01010113          	addi	sp,sp,16
    8000cee8:	00008067          	ret

000000008000ceec <_ZN6ThreadD1Ev>:

Thread::~Thread()
    8000ceec:	00001797          	auipc	a5,0x1
    8000cef0:	19478793          	addi	a5,a5,404 # 8000e080 <_ZTV6Thread+0x10>
    8000cef4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    8000cef8:	00853503          	ld	a0,8(a0)
    8000cefc:	02050663          	beqz	a0,8000cf28 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    8000cf00:	ff010113          	addi	sp,sp,-16
    8000cf04:	00113423          	sd	ra,8(sp)
    8000cf08:	00813023          	sd	s0,0(sp)
    8000cf0c:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000cf10:	fffff097          	auipc	ra,0xfffff
    8000cf14:	460080e7          	jalr	1120(ra) # 8000c370 <_ZN7_threaddlEPv>
}
    8000cf18:	00813083          	ld	ra,8(sp)
    8000cf1c:	00013403          	ld	s0,0(sp)
    8000cf20:	01010113          	addi	sp,sp,16
    8000cf24:	00008067          	ret
    8000cf28:	00008067          	ret

000000008000cf2c <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    8000cf2c:	00001797          	auipc	a5,0x1
    8000cf30:	17c78793          	addi	a5,a5,380 # 8000e0a8 <_ZTV9Semaphore+0x10>
    8000cf34:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    8000cf38:	00853503          	ld	a0,8(a0)
    8000cf3c:	02050663          	beqz	a0,8000cf68 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000cf40:	ff010113          	addi	sp,sp,-16
    8000cf44:	00113423          	sd	ra,8(sp)
    8000cf48:	00813023          	sd	s0,0(sp)
    8000cf4c:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000cf50:	00000097          	auipc	ra,0x0
    8000cf54:	4c4080e7          	jalr	1220(ra) # 8000d414 <_ZN4_semdlEPv>
}
    8000cf58:	00813083          	ld	ra,8(sp)
    8000cf5c:	00013403          	ld	s0,0(sp)
    8000cf60:	01010113          	addi	sp,sp,16
    8000cf64:	00008067          	ret
    8000cf68:	00008067          	ret

000000008000cf6c <_Znwm>:
{
    8000cf6c:	ff010113          	addi	sp,sp,-16
    8000cf70:	00113423          	sd	ra,8(sp)
    8000cf74:	00813023          	sd	s0,0(sp)
    8000cf78:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000cf7c:	fffff097          	auipc	ra,0xfffff
    8000cf80:	0a4080e7          	jalr	164(ra) # 8000c020 <_Z9mem_allocm>
}
    8000cf84:	00813083          	ld	ra,8(sp)
    8000cf88:	00013403          	ld	s0,0(sp)
    8000cf8c:	01010113          	addi	sp,sp,16
    8000cf90:	00008067          	ret

000000008000cf94 <_ZdlPv>:
{
    8000cf94:	ff010113          	addi	sp,sp,-16
    8000cf98:	00113423          	sd	ra,8(sp)
    8000cf9c:	00813023          	sd	s0,0(sp)
    8000cfa0:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000cfa4:	fffff097          	auipc	ra,0xfffff
    8000cfa8:	0ac080e7          	jalr	172(ra) # 8000c050 <_Z8mem_freePv>
}
    8000cfac:	00813083          	ld	ra,8(sp)
    8000cfb0:	00013403          	ld	s0,0(sp)
    8000cfb4:	01010113          	addi	sp,sp,16
    8000cfb8:	00008067          	ret

000000008000cfbc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    8000cfbc:	fe010113          	addi	sp,sp,-32
    8000cfc0:	00113c23          	sd	ra,24(sp)
    8000cfc4:	00813823          	sd	s0,16(sp)
    8000cfc8:	00913423          	sd	s1,8(sp)
    8000cfcc:	02010413          	addi	s0,sp,32
    8000cfd0:	00050493          	mv	s1,a0
}
    8000cfd4:	00000097          	auipc	ra,0x0
    8000cfd8:	f18080e7          	jalr	-232(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000cfdc:	00048513          	mv	a0,s1
    8000cfe0:	00000097          	auipc	ra,0x0
    8000cfe4:	fb4080e7          	jalr	-76(ra) # 8000cf94 <_ZdlPv>
    8000cfe8:	01813083          	ld	ra,24(sp)
    8000cfec:	01013403          	ld	s0,16(sp)
    8000cff0:	00813483          	ld	s1,8(sp)
    8000cff4:	02010113          	addi	sp,sp,32
    8000cff8:	00008067          	ret

000000008000cffc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000cffc:	fe010113          	addi	sp,sp,-32
    8000d000:	00113c23          	sd	ra,24(sp)
    8000d004:	00813823          	sd	s0,16(sp)
    8000d008:	00913423          	sd	s1,8(sp)
    8000d00c:	02010413          	addi	s0,sp,32
    8000d010:	00050493          	mv	s1,a0
}
    8000d014:	00000097          	auipc	ra,0x0
    8000d018:	f18080e7          	jalr	-232(ra) # 8000cf2c <_ZN9SemaphoreD1Ev>
    8000d01c:	00048513          	mv	a0,s1
    8000d020:	00000097          	auipc	ra,0x0
    8000d024:	f74080e7          	jalr	-140(ra) # 8000cf94 <_ZdlPv>
    8000d028:	01813083          	ld	ra,24(sp)
    8000d02c:	01013403          	ld	s0,16(sp)
    8000d030:	00813483          	ld	s1,8(sp)
    8000d034:	02010113          	addi	sp,sp,32
    8000d038:	00008067          	ret

000000008000d03c <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    8000d03c:	00853503          	ld	a0,8(a0)
    8000d040:	02050663          	beqz	a0,8000d06c <_ZN6Thread5startEv+0x30>
{
    8000d044:	ff010113          	addi	sp,sp,-16
    8000d048:	00113423          	sd	ra,8(sp)
    8000d04c:	00813023          	sd	s0,0(sp)
    8000d050:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000d054:	fffff097          	auipc	ra,0xfffff
    8000d058:	1e8080e7          	jalr	488(ra) # 8000c23c <_Z12thread_startPv>
}
    8000d05c:	00813083          	ld	ra,8(sp)
    8000d060:	00013403          	ld	s0,0(sp)
    8000d064:	01010113          	addi	sp,sp,16
    8000d068:	00008067          	ret
        return -1;
    8000d06c:	fff00513          	li	a0,-1
}
    8000d070:	00008067          	ret

000000008000d074 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000d074:	ff010113          	addi	sp,sp,-16
    8000d078:	00113423          	sd	ra,8(sp)
    8000d07c:	00813023          	sd	s0,0(sp)
    8000d080:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000d084:	fffff097          	auipc	ra,0xfffff
    8000d088:	088080e7          	jalr	136(ra) # 8000c10c <_Z15thread_dispatchv>
}
    8000d08c:	00813083          	ld	ra,8(sp)
    8000d090:	00013403          	ld	s0,0(sp)
    8000d094:	01010113          	addi	sp,sp,16
    8000d098:	00008067          	ret

000000008000d09c <_ZN6Thread5sleepEm>:
{
    8000d09c:	ff010113          	addi	sp,sp,-16
    8000d0a0:	00113423          	sd	ra,8(sp)
    8000d0a4:	00813023          	sd	s0,0(sp)
    8000d0a8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000d0ac:	fffff097          	auipc	ra,0xfffff
    8000d0b0:	164080e7          	jalr	356(ra) # 8000c210 <_Z10time_sleepm>
}
    8000d0b4:	00813083          	ld	ra,8(sp)
    8000d0b8:	00013403          	ld	s0,0(sp)
    8000d0bc:	01010113          	addi	sp,sp,16
    8000d0c0:	00008067          	ret

000000008000d0c4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    8000d0c4:	fe010113          	addi	sp,sp,-32
    8000d0c8:	00113c23          	sd	ra,24(sp)
    8000d0cc:	00813823          	sd	s0,16(sp)
    8000d0d0:	00913423          	sd	s1,8(sp)
    8000d0d4:	01213023          	sd	s2,0(sp)
    8000d0d8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000d0dc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    8000d0e0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000d0e4:	0004b783          	ld	a5,0(s1)
    8000d0e8:	0187b783          	ld	a5,24(a5)
    8000d0ec:	00048513          	mv	a0,s1
    8000d0f0:	000780e7          	jalr	a5
        Thread::sleep(time);
    8000d0f4:	00090513          	mv	a0,s2
    8000d0f8:	00000097          	auipc	ra,0x0
    8000d0fc:	fa4080e7          	jalr	-92(ra) # 8000d09c <_ZN6Thread5sleepEm>
    while(true)
    8000d100:	fe5ff06f          	j	8000d0e4 <_ZN14PeriodicThread6runnerEPv+0x20>

000000008000d104 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    8000d104:	ff010113          	addi	sp,sp,-16
    8000d108:	00113423          	sd	ra,8(sp)
    8000d10c:	00813023          	sd	s0,0(sp)
    8000d110:	01010413          	addi	s0,sp,16
    8000d114:	00001797          	auipc	a5,0x1
    8000d118:	f6c78793          	addi	a5,a5,-148 # 8000e080 <_ZTV6Thread+0x10>
    8000d11c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d120:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    8000d124:	00850513          	addi	a0,a0,8
    8000d128:	fffff097          	auipc	ra,0xfffff
    8000d12c:	140080e7          	jalr	320(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d130:	00813083          	ld	ra,8(sp)
    8000d134:	00013403          	ld	s0,0(sp)
    8000d138:	01010113          	addi	sp,sp,16
    8000d13c:	00008067          	ret

000000008000d140 <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000d140:	ff010113          	addi	sp,sp,-16
    8000d144:	00113423          	sd	ra,8(sp)
    8000d148:	00813023          	sd	s0,0(sp)
    8000d14c:	01010413          	addi	s0,sp,16
    8000d150:	00001797          	auipc	a5,0x1
    8000d154:	f3078793          	addi	a5,a5,-208 # 8000e080 <_ZTV6Thread+0x10>
    8000d158:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d15c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    8000d160:	00050613          	mv	a2,a0
    8000d164:	00000597          	auipc	a1,0x0
    8000d168:	d5c58593          	addi	a1,a1,-676 # 8000cec0 <_ZN6Thread6runnerEPv>
    8000d16c:	00850513          	addi	a0,a0,8
    8000d170:	fffff097          	auipc	ra,0xfffff
    8000d174:	0f8080e7          	jalr	248(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d178:	00813083          	ld	ra,8(sp)
    8000d17c:	00013403          	ld	s0,0(sp)
    8000d180:	01010113          	addi	sp,sp,16
    8000d184:	00008067          	ret

000000008000d188 <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    8000d188:	00853503          	ld	a0,8(a0)
    8000d18c:	02050663          	beqz	a0,8000d1b8 <_ZN9Semaphore4waitEv+0x30>
{
    8000d190:	ff010113          	addi	sp,sp,-16
    8000d194:	00113423          	sd	ra,8(sp)
    8000d198:	00813023          	sd	s0,0(sp)
    8000d19c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000d1a0:	fffff097          	auipc	ra,0xfffff
    8000d1a4:	018080e7          	jalr	24(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
}
    8000d1a8:	00813083          	ld	ra,8(sp)
    8000d1ac:	00013403          	ld	s0,0(sp)
    8000d1b0:	01010113          	addi	sp,sp,16
    8000d1b4:	00008067          	ret
        return -1;
    8000d1b8:	fff00513          	li	a0,-1
}
    8000d1bc:	00008067          	ret

000000008000d1c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000d1c0:	fe010113          	addi	sp,sp,-32
    8000d1c4:	00113c23          	sd	ra,24(sp)
    8000d1c8:	00813823          	sd	s0,16(sp)
    8000d1cc:	00913423          	sd	s1,8(sp)
    8000d1d0:	02010413          	addi	s0,sp,32
    8000d1d4:	00050493          	mv	s1,a0
    8000d1d8:	00001797          	auipc	a5,0x1
    8000d1dc:	ed078793          	addi	a5,a5,-304 # 8000e0a8 <_ZTV9Semaphore+0x10>
    8000d1e0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000d1e4:	00850513          	addi	a0,a0,8
    8000d1e8:	fffff097          	auipc	ra,0xfffff
    8000d1ec:	f6c080e7          	jalr	-148(ra) # 8000c154 <_Z8sem_openPP4_semj>
    if(retval != 0)
    8000d1f0:	00050463          	beqz	a0,8000d1f8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    8000d1f4:	0004b423          	sd	zero,8(s1)
}
    8000d1f8:	01813083          	ld	ra,24(sp)
    8000d1fc:	01013403          	ld	s0,16(sp)
    8000d200:	00813483          	ld	s1,8(sp)
    8000d204:	02010113          	addi	sp,sp,32
    8000d208:	00008067          	ret

000000008000d20c <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    8000d20c:	00853503          	ld	a0,8(a0)
    8000d210:	02050663          	beqz	a0,8000d23c <_ZN9Semaphore6signalEv+0x30>
{
    8000d214:	ff010113          	addi	sp,sp,-16
    8000d218:	00113423          	sd	ra,8(sp)
    8000d21c:	00813023          	sd	s0,0(sp)
    8000d220:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000d224:	fffff097          	auipc	ra,0xfffff
    8000d228:	fc0080e7          	jalr	-64(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
}
    8000d22c:	00813083          	ld	ra,8(sp)
    8000d230:	00013403          	ld	s0,0(sp)
    8000d234:	01010113          	addi	sp,sp,16
    8000d238:	00008067          	ret
        return -1;
    8000d23c:	fff00513          	li	a0,-1
}
    8000d240:	00008067          	ret

000000008000d244 <_ZN7Console4getcEv>:
{
    8000d244:	ff010113          	addi	sp,sp,-16
    8000d248:	00113423          	sd	ra,8(sp)
    8000d24c:	00813023          	sd	s0,0(sp)
    8000d250:	01010413          	addi	s0,sp,16
    return ::getc();
    8000d254:	fffff097          	auipc	ra,0xfffff
    8000d258:	0a4080e7          	jalr	164(ra) # 8000c2f8 <_Z4getcv>
}
    8000d25c:	00813083          	ld	ra,8(sp)
    8000d260:	00013403          	ld	s0,0(sp)
    8000d264:	01010113          	addi	sp,sp,16
    8000d268:	00008067          	ret

000000008000d26c <_ZN7Console4putcEc>:
{
    8000d26c:	ff010113          	addi	sp,sp,-16
    8000d270:	00113423          	sd	ra,8(sp)
    8000d274:	00813023          	sd	s0,0(sp)
    8000d278:	01010413          	addi	s0,sp,16
    return ::putc(c);
    8000d27c:	fffff097          	auipc	ra,0xfffff
    8000d280:	0a4080e7          	jalr	164(ra) # 8000c320 <_Z4putcc>
}
    8000d284:	00813083          	ld	ra,8(sp)
    8000d288:	00013403          	ld	s0,0(sp)
    8000d28c:	01010113          	addi	sp,sp,16
    8000d290:	00008067          	ret

000000008000d294 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d294:	fe010113          	addi	sp,sp,-32
    8000d298:	00113c23          	sd	ra,24(sp)
    8000d29c:	00813823          	sd	s0,16(sp)
    8000d2a0:	00913423          	sd	s1,8(sp)
    8000d2a4:	01213023          	sd	s2,0(sp)
    8000d2a8:	02010413          	addi	s0,sp,32
    8000d2ac:	00050493          	mv	s1,a0
    8000d2b0:	00058913          	mv	s2,a1
    8000d2b4:	01000513          	li	a0,16
    8000d2b8:	00000097          	auipc	ra,0x0
    8000d2bc:	cb4080e7          	jalr	-844(ra) # 8000cf6c <_Znwm>
    8000d2c0:	00050613          	mv	a2,a0
    8000d2c4:	00050663          	beqz	a0,8000d2d0 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    8000d2c8:	00953023          	sd	s1,0(a0)
    8000d2cc:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d2d0:	00000597          	auipc	a1,0x0
    8000d2d4:	df458593          	addi	a1,a1,-524 # 8000d0c4 <_ZN14PeriodicThread6runnerEPv>
    8000d2d8:	00048513          	mv	a0,s1
    8000d2dc:	00000097          	auipc	ra,0x0
    8000d2e0:	e28080e7          	jalr	-472(ra) # 8000d104 <_ZN6ThreadC1EPFvPvES0_>
    8000d2e4:	00001797          	auipc	a5,0x1
    8000d2e8:	d6c78793          	addi	a5,a5,-660 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d2ec:	00f4b023          	sd	a5,0(s1)
}
    8000d2f0:	01813083          	ld	ra,24(sp)
    8000d2f4:	01013403          	ld	s0,16(sp)
    8000d2f8:	00813483          	ld	s1,8(sp)
    8000d2fc:	00013903          	ld	s2,0(sp)
    8000d300:	02010113          	addi	sp,sp,32
    8000d304:	00008067          	ret

000000008000d308 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000d308:	ff010113          	addi	sp,sp,-16
    8000d30c:	00813423          	sd	s0,8(sp)
    8000d310:	01010413          	addi	s0,sp,16
    8000d314:	00813403          	ld	s0,8(sp)
    8000d318:	01010113          	addi	sp,sp,16
    8000d31c:	00008067          	ret

000000008000d320 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000d320:	ff010113          	addi	sp,sp,-16
    8000d324:	00813423          	sd	s0,8(sp)
    8000d328:	01010413          	addi	s0,sp,16
    8000d32c:	00813403          	ld	s0,8(sp)
    8000d330:	01010113          	addi	sp,sp,16
    8000d334:	00008067          	ret

000000008000d338 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000d338:	ff010113          	addi	sp,sp,-16
    8000d33c:	00113423          	sd	ra,8(sp)
    8000d340:	00813023          	sd	s0,0(sp)
    8000d344:	01010413          	addi	s0,sp,16
    8000d348:	00001797          	auipc	a5,0x1
    8000d34c:	d0878793          	addi	a5,a5,-760 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d350:	00f53023          	sd	a5,0(a0)
    8000d354:	00000097          	auipc	ra,0x0
    8000d358:	b98080e7          	jalr	-1128(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000d35c:	00813083          	ld	ra,8(sp)
    8000d360:	00013403          	ld	s0,0(sp)
    8000d364:	01010113          	addi	sp,sp,16
    8000d368:	00008067          	ret

000000008000d36c <_ZN14PeriodicThreadD0Ev>:
    8000d36c:	fe010113          	addi	sp,sp,-32
    8000d370:	00113c23          	sd	ra,24(sp)
    8000d374:	00813823          	sd	s0,16(sp)
    8000d378:	00913423          	sd	s1,8(sp)
    8000d37c:	02010413          	addi	s0,sp,32
    8000d380:	00050493          	mv	s1,a0
    8000d384:	00001797          	auipc	a5,0x1
    8000d388:	ccc78793          	addi	a5,a5,-820 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d38c:	00f53023          	sd	a5,0(a0)
    8000d390:	00000097          	auipc	ra,0x0
    8000d394:	b5c080e7          	jalr	-1188(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000d398:	00048513          	mv	a0,s1
    8000d39c:	00000097          	auipc	ra,0x0
    8000d3a0:	bf8080e7          	jalr	-1032(ra) # 8000cf94 <_ZdlPv>
    8000d3a4:	01813083          	ld	ra,24(sp)
    8000d3a8:	01013403          	ld	s0,16(sp)
    8000d3ac:	00813483          	ld	s1,8(sp)
    8000d3b0:	02010113          	addi	sp,sp,32
    8000d3b4:	00008067          	ret

000000008000d3b8 <_ZN14PCBWrapperUser15userMainWrapperEPv>:
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    8000d3b8:	ff010113          	addi	sp,sp,-16
    8000d3bc:	00113423          	sd	ra,8(sp)
    8000d3c0:	00813023          	sd	s0,0(sp)
    8000d3c4:	01010413          	addi	s0,sp,16
    userMain();
    8000d3c8:	fffff097          	auipc	ra,0xfffff
    8000d3cc:	7b0080e7          	jalr	1968(ra) # 8000cb78 <_Z8userMainv>
}
    8000d3d0:	00813083          	ld	ra,8(sp)
    8000d3d4:	00013403          	ld	s0,0(sp)
    8000d3d8:	01010113          	addi	sp,sp,16
    8000d3dc:	00008067          	ret

000000008000d3e0 <_ZN14PCBWrapperUser11wrapperUserEPFvPvES0_>:

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    8000d3e0:	ff010113          	addi	sp,sp,-16
    8000d3e4:	00113423          	sd	ra,8(sp)
    8000d3e8:	00813023          	sd	s0,0(sp)
    8000d3ec:	01010413          	addi	s0,sp,16
    8000d3f0:	00050793          	mv	a5,a0
    body(args);
    8000d3f4:	00058513          	mv	a0,a1
    8000d3f8:	000780e7          	jalr	a5
    thread_exit();
    8000d3fc:	fffff097          	auipc	ra,0xfffff
    8000d400:	d30080e7          	jalr	-720(ra) # 8000c12c <_Z11thread_exitv>
    8000d404:	00813083          	ld	ra,8(sp)
    8000d408:	00013403          	ld	s0,0(sp)
    8000d40c:	01010113          	addi	sp,sp,16
    8000d410:	00008067          	ret

000000008000d414 <_ZN4_semdlEPv>:
//

#include "../../h/_sem.hpp"
#include "../../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    8000d414:	ff010113          	addi	sp,sp,-16
    8000d418:	00113423          	sd	ra,8(sp)
    8000d41c:	00813023          	sd	s0,0(sp)
    8000d420:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    8000d424:	fffff097          	auipc	ra,0xfffff
    8000d428:	d68080e7          	jalr	-664(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000d42c:	00813083          	ld	ra,8(sp)
    8000d430:	00013403          	ld	s0,0(sp)
    8000d434:	01010113          	addi	sp,sp,16
    8000d438:	00008067          	ret
	...

000000008000e000 <userDataStart>:
    8000e000:	7542                	ld	a0,48(sp)
    8000e002:	6666                	ld	a2,88(sp)
    8000e004:	7265                	lui	tp,0xffff9
    8000e006:	6420                	ld	s0,72(s0)
    8000e008:	6c65                	lui	s8,0x19
    8000e00a:	7465                	lui	s0,0xffff9
    8000e00c:	6465                	lui	s0,0x19
    8000e00e:	0a21                	addi	s4,s4,8
	...
    8000e018:	6548                	ld	a0,136(a0)
    8000e01a:	6c6c                	ld	a1,216(s0)
    8000e01c:	0000206f          	j	8001001c <end+0x101c>
    8000e020:	2120                	fld	fs0,64(a0)
    8000e022:	000a                	c.slli	zero,0x2
    8000e024:	0000                	unimp
	...

000000008000e028 <digits>:
    8000e028:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

000000008000e040 <_ZTV14PeriodicThread>:
	...
    8000e050:	d338 8000 0000 0000 d36c 8000 0000 0000     8.......l.......
    8000e060:	d308 8000 0000 0000 d320 8000 0000 0000     ........ .......

000000008000e070 <_ZTV6Thread>:
	...
    8000e080:	ceec 8000 0000 0000 cfbc 8000 0000 0000     ................
    8000e090:	d308 8000 0000 0000                         ........

000000008000e098 <_ZTV9Semaphore>:
	...
    8000e0a8:	cf2c 8000 0000 0000 cffc 8000 0000 0000     ,...............

000000008000e0b8 <lockPrint>:
	...

000000008000e0c0 <finished>:
	...
    8000e0c8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e0d8:	0d1b 0002 0020 0000 0018 0000 df3c ffff     .... .......<...
    8000e0e8:	0030 0000 4400 100e 8844 4402 000c 0000     0....D..D..D....
    8000e0f8:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    8000e108:	df48 ffff 002c 0000 4400 100e 8844 4402     H...,....D..D..D
    8000e118:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    8000e128:	0060 0000 df50 ffff 0090 0000 4400 000e     `...P........D..
	...
    8000e140:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    8000e150:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    8000e160:	0098 0000 dfa8 ffff 0020 0000 4400 100e     ........ ....D..
    8000e170:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e180:	0020 0000 00bc 0000 dfa4 ffff 0028 0000      ...........(...
    8000e190:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e1a0:	0e44 0000 0020 0000 00e0 0000 dfa8 ffff     D... ...........
    8000e1b0:	0038 0000 4400 100e 8844 4402 000c 0000     8....D..D..D....
    8000e1c0:	0c00 1002 0e44 0000 0020 0000 0104 0000     ....D... .......
    8000e1d0:	dfbc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    8000e1e0:	000c 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    8000e1f0:	0128 0000 dfc4 ffff 002c 0000 4400 100e     (.......,....D..
    8000e200:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e210:	0020 0000 014c 0000 dfcc ffff 002c 0000      ...L.......,...
    8000e220:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e230:	0e44 0000 0020 0000 0170 0000 dfd4 ffff     D... ...p.......
    8000e240:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    8000e250:	0c00 1002 0e44 0000 0020 0000 0194 0000     ....D... .......
    8000e260:	dfdc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    8000e270:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    8000e280:	01b8 0000 dfe4 ffff 0090 0000 4400 000e     .............D..
	...
    8000e298:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    8000e2a8:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    8000e2b8:	01f0 0000 e03c ffff 0028 0000 4400 100e     ....<...(....D..
    8000e2c8:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e2d8:	0020 0000 0214 0000 e040 ffff 0024 0000      .......@...$...
    8000e2e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e2f8:	0e44 0000 0020 0000 0238 0000 e040 ffff     D... ...8...@...
    8000e308:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    8000e318:	0c00 1002 0e44 0000 0010 0000 0000 0000     ....D...........
    8000e328:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    8000e338:	0018 0000 e034 ffff 0028 0000 4400 000e     ....4...(....D..
    8000e348:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e358:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    8000e368:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    8000e378:	0018 0000 e01c ffff 007c 0000 4400 000e     ........|....D..
    8000e388:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e398:	020c 4420 44c9 000e 0034 0000 0044 0000     .. D.D..4...D...
    8000e3a8:	e06c ffff 00cc 0000 4400 000e 0000 0000     l........D......
    8000e3b8:	0000 0000 0000 9400 440c 080c 0200 0000     .........D......
    8000e3c8:	0000 020c 4430 44c9 44d2 44d3 44d4 000e     ....0D.D.D.D.D..
    8000e3d8:	0020 0000 007c 0000 e100 ffff 0050 0000      ...|.......P...
    8000e3e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e3f8:	0e44 0000 0030 0000 00a0 0000 e12c ffff     D...0.......,...
    8000e408:	0114 0000 4400 000e 0000 0000 0000 0000     .....D..........
    8000e418:	9300 440a 080c 0200 0000 0000 020c 4440     ...D..........@D
    8000e428:	44c9 44d2 44d3 000e 0018 0000 0000 0000     .D.D.D..........
    8000e438:	7a03 4c50 0052 7c01 0701 4d9b ffa4 1bff     .zPLR..|...M....
    8000e448:	0d1b 0002 0038 0000 0020 0000 e1f0 ffff     ....8... .......
    8000e458:	0164 0000 6904 ffa3 44ff 000e 0000 0000     d....i...D......
    8000e468:	0000 0000 9300 440a 080c 0000 0000 0000     .......D........
    8000e478:	0c00 3002 c944 d244 d344 0e44 4400 000b     ...0D.D.D.D..D..
    8000e488:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e498:	0d1b 0002 002c 0000 0018 0000 e304 ffff     ....,...........
    8000e4a8:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e4b8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e4c8:	44d2 000e 002c 0000 0048 0000 e364 ffff     .D..,...H...d...
    8000e4d8:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e4e8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e4f8:	44d2 000e 0030 0000 0078 0000 e3c0 ffff     .D..0...x.......
    8000e508:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e518:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    8000e528:	d244 0e44 4400 000b 002c 0000 0104 0000     D.D..D..,.......
    8000e538:	e414 ffff 0100 0000 2604 ffa3 44ff 000e     .........&...D..
    8000e548:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e558:	020c 4420 44c9 000e 0010 0000 0000 0000     .. D.D..........
    8000e568:	7a03 0052 7c01 0101 0d1b 0002 002c 0000     .zR..|......,...
    8000e578:	0018 0000 e4d0 ffff 00a4 0000 4400 000e     .............D..
    8000e588:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    8000e598:	0000 020c 4420 44c9 44d2 000e 0028 0000     .... D.D.D..(...
    8000e5a8:	0048 0000 e544 ffff 0088 0000 4400 000e     H...D........D..
    8000e5b8:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e5c8:	020c 4440 44c9 000e 0024 0000 0074 0000     ..@D.D..$...t...
    8000e5d8:	e5a0 ffff 0028 0000 4400 000e 0000 8800     ....(....D......
    8000e5e8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e5f8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e608:	0d1b 0002 002c 0000 0018 0000 e58c ffff     ....,...........
    8000e618:	009c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e628:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e638:	44d2 000e 002c 0000 0048 0000 e5f8 ffff     .D..,...H.......
    8000e648:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e658:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e668:	44d2 000e 002c 0000 0078 0000 e658 ffff     .D..,...x...X...
    8000e678:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e688:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e698:	44d2 000e 0030 0000 00a8 0000 e6b4 ffff     .D..0...........
    8000e6a8:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e6b8:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    8000e6c8:	d244 0e44 4400 000b 0018 0000 0000 0000     D.D..D..........
    8000e6d8:	7a03 4c50 0052 7c01 0701 ad9b ffa1 1bff     .zPLR..|........
    8000e6e8:	0d1b 0002 0030 0000 0020 0000 e6ec ffff     ....0... .......
    8000e6f8:	00e0 0000 6e04 ffa1 44ff 000e 0000 0000     .....n...D......
    8000e708:	8900 4406 080c 0200 0000 0000 020c 4420     ...D.......... D
    8000e718:	44c9 000e 0000 0000 0010 0000 0000 0000     .D..............
    8000e728:	7a03 0052 7c01 0101 0d1b 0002 0020 0000     .zR..|...... ...
    8000e738:	0018 0000 ebcc ffff 0018 0000 4400 100e     .............D..
    8000e748:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e758:	0020 0000 003c 0000 ebc0 ffff 0018 0000      ...<...........
    8000e768:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e778:	0e44 0000 0024 0000 0060 0000 e73c ffff     D...$...`...<...
    8000e788:	002c 0000 4400 000e 0000 8800 4404 080c     ,....D.......D..
    8000e798:	0000 0000 0c00 1002 0e44 0000 0018 0000     ........D.......
    8000e7a8:	0000 0000 7a03 4c50 0052 7c01 0701 d99b     .....zPLR..|....
    8000e7b8:	ffa0 1bff 0d1b 0002 0028 0000 0020 0000     ........(... ...
    8000e7c8:	e724 ffff 0040 0000 9e04 ffa0 58ff 000e     $...@........X..
    8000e7d8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e7e8:	0e44 0000 0024 0000 00d0 0000 eb44 ffff     D...$.......D...
    8000e7f8:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    8000e808:	0000 0000 0c00 1002 0e44 0000 0028 0000     ........D...(...
    8000e818:	0074 0000 e710 ffff 0040 0000 4e04 ffa0     t.......@....N..
    8000e828:	58ff 000e 0000 8800 4404 080c 0000 0000     .X.......D......
    8000e838:	0c00 1002 0e44 0000 0024 0000 0124 0000     ....D...$...$...
    8000e848:	e724 ffff 0028 0000 4400 000e 0000 8800     $...(....D......
    8000e858:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e868:	0024 0000 014c 0000 e724 ffff 0028 0000     $...L...$...(...
    8000e878:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    8000e888:	0c00 1002 0e44 0000 0028 0000 0174 0000     ....D...(...t...
    8000e898:	e724 ffff 0040 0000 4400 000e 0000 0000     $...@....D......
    8000e8a8:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    8000e8b8:	0e44 0000 0028 0000 01a0 0000 e738 ffff     D...(.......8...
    8000e8c8:	0040 0000 4400 000e 0000 0000 8900 4406     @....D.........D
    8000e8d8:	080c 0000 0000 0c00 2002 c944 0e44 0000     ......... D.D...
    8000e8e8:	0028 0000 01cc 0000 ea7c ffff 004c 0000     (.......|...L...
    8000e8f8:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    8000e908:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    8000e918:	01f8 0000 e720 ffff 0038 0000 4c00 000e     .... ...8....L..
    8000e928:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e938:	0e44 0000 0024 0000 0220 0000 e730 ffff     D...$... ...0...
    8000e948:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000e958:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    8000e968:	0248 0000 e730 ffff 0028 0000 4400 000e     H...0...(....D..
    8000e978:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e988:	0e44 0000 0020 0000 0270 0000 e730 ffff     D... ...p...0...
    8000e998:	0040 0000 4400 000e 0000 0000 0000 9200     @....D..........
    8000e9a8:	4408 080c 0000 0000 0024 0000 0294 0000     .D......$.......
    8000e9b8:	e74c ffff 003c 0000 4400 000e 0000 8800     L...<....D......
    8000e9c8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e9d8:	0024 0000 02bc 0000 e760 ffff 0048 0000     $.......`...H...
    8000e9e8:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    8000e9f8:	0c00 1002 0e44 0000 0024 0000 02e4 0000     ....D...$.......
    8000ea08:	e780 ffff 0038 0000 4c00 000e 0000 8800     ....8....L......
    8000ea18:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000ea28:	0028 0000 030c 0000 e790 ffff 004c 0000     (...........L...
    8000ea38:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    8000ea48:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    8000ea58:	0338 0000 e7b0 ffff 0038 0000 4c00 000e     8.......8....L..
    8000ea68:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000ea78:	0e44 0000 0024 0000 0360 0000 e7c0 ffff     D...$...`.......
    8000ea88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000ea98:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    8000eaa8:	0388 0000 e7c0 ffff 0028 0000 4400 000e     ........(....D..
    8000eab8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000eac8:	0e44 0000 0030 0000 03b0 0000 e7c0 ffff     D...0...........
    8000ead8:	0074 0000 4400 000e 0000 0000 0000 9200     t....D..........
    8000eae8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000eaf8:	44d2 000e 0000 0000 0010 0000 0000 0000     .D..............
    8000eb08:	7a03 0052 7c01 0101 0d1b 0002 0024 0000     .zR..|......$...
    8000eb18:	0018 0000 e89c ffff 0028 0000 4400 000e     ........(....D..
    8000eb28:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000eb38:	0e44 0000 0028 0000 0040 0000 e89c ffff     D...(...@.......
    8000eb48:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    8000eb58:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
    8000eb68:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000eb78:	0d1b 0002 0028 0000 0018 0000 e890 ffff     ....(...........
    8000eb88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000eb98:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
